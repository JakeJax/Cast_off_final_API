class CreateClicks < ActiveRecord::Migration
  def change
    create_table :clicks do |t|
      t.references :user, index: true, foreign_key: true
      t.references :podcast, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
