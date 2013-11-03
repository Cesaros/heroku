class CreatePost1s < ActiveRecord::Migration
  def change
    create_table :post1s do |t|
      t.string :titulo
      t.text :texto
      t.date :fecha
      t.string :autor

      t.timestamps
    end
  end
end
