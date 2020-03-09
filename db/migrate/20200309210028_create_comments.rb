class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.integer :idUser
      t.integer :idPost
      t.string :content

      t.timestamps
    end
  end
end
