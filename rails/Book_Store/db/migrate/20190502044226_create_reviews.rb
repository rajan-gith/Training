class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :number
      t.string :user
      t.string :business

      t.timestamps
    end
  end
end
