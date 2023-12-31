class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body, comment: 'Content of the post'
      t.integer :user_id
      t.integer :flag_id
      t.integer :location_id

      t.timestamps
    end
   
  end
end
