# frozen_string_literal: true

class Quiz < ApplicationRecord
  has_noticed_notifications
  has_many :question_quizzes, dependent: :destroy
  has_many :questions, through: :question_quizzes
  has_and_belongs_to_many :categories
  scope :filter_quiz, -> { where.not(user_answer: []) }
  belongs_to :user, optional: true
  # after_update_commit :send_email, :notify_receipt
  before_destroy :cleanup_notifications

  def notify_receipt
    QuizNotification.with(quiz: self, email: user.email).deliver_later(User.all.admin) unless user.nil?
    QuizNotification.with(quiz: self, email: email).deliver_later(User.all.admin) if user.nil?
  end

  def cleanup_notifications
    notifications_as_quiz.destroy_all
  end

  def self.find_user
    users = []
    Quiz.all.includes([:user]).find_each do |quiz|
      users << quiz.user unless quiz.user.nil?
    end
    users.uniq
  end

  def scores(answers)
    scores = 0
    answers.each do |option_id|
      scores += 1 if (option_id != 'nil') && Option.find(option_id).correct
    end
    scores
  end

  def send_email
    guest_email = email
    report = Quizzes::GenerateReportPdfService.new(quiz: self).execute
    QuizSystemMailer.with(
      email: guest_email,
      report: report
    ).welcome_email.deliver_later
  end

  def percentages(score)
    (score * 100) / questions.count
  end

  def update_quiz_answer(quiz_params)
    quiz_answer = {}
    questions.ids.each do |id|
      quiz_answer[id] = if quiz_params.key?(id.to_s)
                          quiz_params[id.to_s]
                        else
                          'nil'
                        end
    end
    quiz_answer
  end

  def find_answer
    answers = []
    user_answer.each do |answer_id|
      answer = if answer_id == 'nil'
                 'Un Checked'
               else
                 Option.find_by(id: answer_id)
               end
      answers << answer unless answer.nil?
    end
    answers
  end
end
