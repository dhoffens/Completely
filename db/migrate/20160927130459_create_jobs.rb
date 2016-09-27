class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.string :name
      t.text :description
      t.integer :budget_low
      t.integer :budget_high
      t.string :zip
      t.text :comment
      t.references :user, foreign_key: true
      t.boolean :digital

      t.timestamps
    end
  end
end
