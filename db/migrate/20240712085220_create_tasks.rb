class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :title,        null:false
      t.string :aim,          null:false
      t.text   :content,      null:false
      t.date   :date,         null:false
      t.references :project,  null:false, foreign_key: true
      t.timestamps
    end
  end
end
