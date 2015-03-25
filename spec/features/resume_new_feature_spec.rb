require 'rails_helper'
describe "New Resume Spec" do

  before do
    visit '/'
    fill_in I18n.t('pages.new.resume_text_label'), with: "resumetext"
    fill_in I18n.t('pages.new.job_text_label'), with: "jobtext"
    click_on "Identify Keywords"
  end

  it "a popup appears", js: true do
    expect(page).to have_selector '.modal'
  end

  it "submits the form after 5 seconds", js: true do
    sleep 4
    expect(current_path).to eq "/"
    sleep 1
    expect(current_path).to eq "/resumes/1"
  end

end