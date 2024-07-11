class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string :title, null: false
      t.string :goal,  null: false
      t.date   :date,  null: false
      t.timestamps
    end
  end
end
