class CreateSiswas < ActiveRecord::Migration
  def change
    create_table :siswas do |t|
      t.string :name
      t.string :email
      t.string :alamat

      t.timestamps
    end
  end
end
