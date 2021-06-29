class SubmissionsController < ApplicationController
  def index
    @submission = Submission.new
  end

  def create
    @submission = Submission.new(submission_params)
    if @submission.save
      redirect_to "/#{@submission.word}"
    else
      redirect_to root_path, flash: { alert: @submission.errors.first.full_message }
    end
  end

  def challenge
    @submission = Submission.new
    @new_word = params[:word]

    @results = []
    current = []
    @new_word.split('').each do |word|
      if current.include?(word)
        @results = current if current.length > @results.length
        current = []
      end
      current << word
    end
    @results
  end

  private

  def submission_params
    params.require(:submission).permit(:word)
  end
end
