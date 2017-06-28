class RemoveUserFromGroups < ActiveRecord::Migration[5.0]
  def change
    remove_column :groups, :user, :string
  end
end
