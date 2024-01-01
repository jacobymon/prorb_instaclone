class ChangeLikesTableNullableColumns < ActiveRecord::Migration[7.0]
  def change
    change_column :likes, :user_id, :integer, null: true
    change_column :likes, :post_id, :integer, null: true
  end
end
