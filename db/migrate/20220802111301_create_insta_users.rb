class CreateInstaUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :insta_users do |t|
      t.string :name

      t.timestamps
    end
  end
end
