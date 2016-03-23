class CreateSession < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.string :authentication_token
    end
  end
end
