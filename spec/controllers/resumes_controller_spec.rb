require 'rails_helper'
describe ResumesController do

  describe "POST #create" do

    context "when resume is valid" do

      before do
        @resume_attributes = FactoryGirl.attributes_for(:new_resume)
        @resume_attributes['resume_body_attributes'] =
          FactoryGirl.attributes_for(:resume_body)
      end

      it "redirects show page of resume" do
        post :create, { resume: @resume_attributes }
        expect(response).to redirect_to resume_path Resume.last
      end

    end

    context "when resume is invalid" do

      before do
        @resume_attributes = FactoryGirl.attributes_for(:invalid_resume)
      end

      it "render new page" do
        post :create, { resume: @resume_attributes }
        expect(response).to render_template :new
      end

    end

  end

end