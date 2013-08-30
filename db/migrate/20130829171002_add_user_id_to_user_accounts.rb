class AddUserIdToUserAccounts < ActiveRecord::Migration
  def change
    change_table :user_accounts do |t|
      t.uuid :user, index: true
    end
  end
end
