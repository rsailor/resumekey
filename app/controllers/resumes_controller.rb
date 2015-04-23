class ResumesController < ApplicationController
  respond_to :html
  responders :flash

  def new
    @resume = Resume.new
    @resume.resume_body = ResumeBody.new
  end

  def create
    @resume = Resume.new(resume_params)
    @resume.save
    respond_with @resume
  end

  def show
    @resume = Resume.find(params[:id])
  end

  private

    def resume_params
      params.require(:resume).permit(:job_posting_text,
          resume_body_attributes: [:text])
    end
end