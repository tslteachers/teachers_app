class CreateConcentrations < ActiveRecord::Migration
  def change
    create_table :concentrations do |t|
      t.integer :teacher_id
      t.integer :subject_id
    end
  end
end
