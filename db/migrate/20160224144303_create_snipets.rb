class CreateSnipets < ActiveRecord::Migration[5.0]
  def change
    create_table :snipets do |t|
      t.string :name
      t.string :url
      t.string :sentence

      t.timestamps
    end
  end
end
