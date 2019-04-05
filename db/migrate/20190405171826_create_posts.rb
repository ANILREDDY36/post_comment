class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string     :title
      t.text       :description
      t.attachment :image
      t.integer    :user_id

      t.timestamps
    end
  end
end
