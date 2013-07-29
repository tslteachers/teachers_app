class CreateInterests < ActiveRecord::Migration
  def change
    create_table :interests do |t|
      t.integer :teacher_id
      t.integer :course_id
    end
  end
end
