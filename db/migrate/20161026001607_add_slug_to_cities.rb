class AddSlugToCities < ActiveRecord::Migration[5.0]
  def change
    add_column :cities, :slug, :string
    add_index :cities, :slug
  end
end
