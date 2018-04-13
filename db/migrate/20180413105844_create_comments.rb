class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :message
      t.belongs_to :users, foreign_key: true
      t.belongs_to :posts, foreign_key: true

      t.timestamps
    end
  end
end
