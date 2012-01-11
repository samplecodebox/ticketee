class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :title
      t.text :decription
      t.references :project

      t.timestamps
    end
    add_index :tickets, :project_id
  end
end
