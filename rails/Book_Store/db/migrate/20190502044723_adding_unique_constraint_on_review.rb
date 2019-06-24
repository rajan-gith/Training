class AddingUniqueConstraintOnReview < ActiveRecord::Migration[5.2]
  def change
    add_index :reviews, [:number, :business, :user], unique: true
  end
end
