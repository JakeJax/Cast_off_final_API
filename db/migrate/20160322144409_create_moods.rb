class CreateMoods < ActiveRecord::Migration
  def change
    create_table :moods do |t|
      t.string :title
      t.string :image

      t.timestamps null: false
    end
  end
end
