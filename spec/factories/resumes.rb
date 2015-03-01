FactoryGirl.define do
  factory :new_resume, class: "Resume" do
    association :resume_body, factory: :resume_body
    job_posting_text "some job text"
  end

  factory :invalid_resume, class: "Resume" do
    job_posting_text ""
  end
end