class FixConfirmationSentInUsers < ActiveRecord::Migration
  def change
    rename_column :users, :confirmed_sent_at, :confirmation_sent_at
  end
end
