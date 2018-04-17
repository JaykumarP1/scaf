class CreateNews < ActiveRecord::Migration[5.2]
  def change
    create_table :news do |t|
      t.string :s_no
      t.text :img
      t.text :title
      t.text :url

      t.timestamps
    end
  end
end
