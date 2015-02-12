class CreateResumeBody < ActiveRecord::Migration
  def change
    create_table :resume_bodies do |t|
      t.text :text
      t.belongs_to :resume
      t.timestamps
    end
  end
end
