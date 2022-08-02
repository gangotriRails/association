class CreateInstaPosts < ActiveRecord::Migration[6.1]
  def change
    create_table :insta_posts do |t|
      t.string :image

      t.timestamps
    end
  end
end
