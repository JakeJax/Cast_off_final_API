class AddFieldsToPodcasts < ActiveRecord::Migration
  def change
    add_column :podcasts, :title, :string
    add_reference :podcasts, :playlist, index: true, foreign_key: true
    add_column :podcasts, :url, :string
  end
end
