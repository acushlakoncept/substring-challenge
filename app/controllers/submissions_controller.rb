class SubmissionsController < ApplicationController
    def index
      @submission = Submission.new
    end
end
