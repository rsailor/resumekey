require 'rails_helper'
describe "Test Spec" do
  it "should work" do
    visit '/'
    expect(page).to have_content "ResumeKey"
  end
end