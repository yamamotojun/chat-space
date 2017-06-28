class AddUserToGroups < ActiveRecord::Migration[5.0]
  def change
    add_column :groups, :user, :string
  end
end
