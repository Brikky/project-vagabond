class SetDefaultPhotoForUsers < ActiveRecord::Migration[5.0]
  def change
    change_column :users, :profile_photo, :string, :default => "http://i.imgur.com/K7PSKI4.png"
  end
end
