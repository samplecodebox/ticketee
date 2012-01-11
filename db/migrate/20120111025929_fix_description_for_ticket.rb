class FixDescriptionForTicket < ActiveRecord::Migration
  def change
    rename_column :tickets, :decription, :description
  end
end
