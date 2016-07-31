class ChangeDefaultValueOfIsDoneToTasks < ActiveRecord::Migration
  def change
  	change_column_default :tasks, :isDone, from: nil, to: false
  end
end
