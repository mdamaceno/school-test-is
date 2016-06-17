class CreateClassrooms < ActiveRecord::Migration
  def change
    create_table :classrooms do |t|
      t.references :student, index: true, foreign_key: true, null: false
      t.references :course, index: true, foreign_key: true, null: false
      t.datetime :entry_at, null: false

      t.timestamps null: false
    end
  end
end
