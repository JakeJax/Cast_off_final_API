class AddImageToUsers < ActiveRecord::Migration
  def change
    add_column :users, :image, :string, default: 'avatar.png'
  end
end
