class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.text :title
      t.boolean  :isDone


      t.timestamps null: false
    end
  end
end
