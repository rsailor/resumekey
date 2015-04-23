class Resume < ActiveRecord::Base

  # Attributes
  #-----------------------------------------------------------------------------
  attr_accessor :job_posting_text

  # Associations
  #-----------------------------------------------------------------------------
  has_one :frequency_record
  has_one :resume_body

  accepts_nested_attributes_for :resume_body

  # Validations
  #-----------------------------------------------------------------------------
  validates :job_posting_text, presence: true
  validates_associated :resume_body

  # Class Methods
  #-----------------------------------------------------------------------------

  # Instance Methods
  #-----------------------------------------------------------------------------

end