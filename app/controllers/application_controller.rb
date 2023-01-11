# frozen_string_literal: true

class ApplicationController < ActionController::Base
  include Pagy::Backend
  include ErrorHandler2
  include ExceptionHandler

  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_notifications, if: :current_user
  include Pundit::Authorization
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  def after_sign_in_path_for(_user)
    flash[:alert] = nil
    dashboards_path
  end

  def not_found_method
    render(file: Rails.public_path.join('404.html'), status: :not_found, layout: false)
  end

  def all_error(_e)
    redirect_to(root_path)
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[first_name last_name])
  end

  private

  def render_custom_error(_exception)
    # redirect_to(dashboards_path, alert: exception.message)
    puts('*' * 50)
  end

  def set_notifications
    @notifications = Notification.includes([:recipient]).where(recipient: current_user).newest_first
    @unread = @notifications.unread
    @read = @notifications.read
  end

  def user_not_authorized
    flash[:danger] = 'You are not authorized to perform this action.'
    redirect_to(request.referer || dashboards_path)
  end
end
