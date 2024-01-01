class ChangeColumnToLikeableIdInLikes < ActiveRecord::Migration[7.0]
  def change
     # Remove the existing polymorphic column
     remove_reference :likes, :likable, polymorphic: true, index: true

     # Add a new column with the correct name
     add_reference :likes, :likeable, polymorphic: true, index: true
  end
end
