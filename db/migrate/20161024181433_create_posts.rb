class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :text_body
      t.belongs_to :user, foreign_key: true
      t.string :photo

      t.timestamps
    end
  end
end
