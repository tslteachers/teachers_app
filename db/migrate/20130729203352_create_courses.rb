class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.integer :subject_id
      t.string :location
      t.string :time
      t.string :compensation
      t.string :qualifications
      t.integer :college_id
      t.text :description
    end
  end
end
