class CreateInventions < ActiveRecord::Migration
  def change
    create_table :inventions do |t|
      t.integer :blueprint
      t.integer :prefered_decryptor

      t.timestamps
    end
  end
end
