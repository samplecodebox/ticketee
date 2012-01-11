class AddConfirmationFieldsToUsers < ActiveRecord::Migration
  def change
      add_column :users, :confirmation_token, :string
      add_column :users, :confirmed_at, :datetime
      add_column :users, :confirmed_sent_at, :datetime
  end
end
