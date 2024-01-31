class QuizController < ApplicationController
  before_action :set_questions, only: [:index, :run_test, :evaluate_test, :show_score]

  def index
  end

  def run_test
    @score = 0
  end

  def evaluate_test
    @score = 0

    params[:answers].each do |question_id, answer|
      question = @questions.find(question_id.to_i)
      @score += 1 if answer == question.answer
    end

    session[:quiz_score] = @score
    redirect_to show_score_quiz_index_path
  end

  def show_score
    @score = session[:quiz_score] || 0
  end

  private

  def set_questions
    @questions = Question.all
  end
end
