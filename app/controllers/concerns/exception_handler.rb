module ExceptionHandler
  extend ActiveSupport::Concern

  included do
    rescue_from ErrorHandler2::CustomError, with: :not_found
  end

  private

  def not_found(exec)
    redirect_to(dashboards_path, alert: exec)
  end
end
