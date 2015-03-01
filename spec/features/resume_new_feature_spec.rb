require 'rails_helper'
describe "New Resume Spec" do

  before do
    visit '/'
    fill_in I18n.t('pages.new.resume_text_label'), with: "resumetext"
    fill_in I18n.t('pages.new.job_text_label'), with: "jobtext"
    click_on "Identify Keywords"
  end

  it "redirects to show page of new resume" do
    expect(current_path).to eq "/resumes/1"
  end

end