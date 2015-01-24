class ResumesController < ApplicationController

  def new
    @resume = Resume.new
  end

  def create
    @resume = Resume.new(params[:resume])
    # ....
    @resume.save
    respond_with @resume
  end

  def show

  end
end