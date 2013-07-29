class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :first_name
      t.string :last_name
      t.text :bio
      t.string :highest_degree
      t.string :availability
      t.string :email
      t.string :phone
    end
  end
end
