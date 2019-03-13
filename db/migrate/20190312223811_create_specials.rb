class CreateSpecials < ActiveRecord::Migration[5.2]
  def change
    create_table :specials do |t|
      t.string :name
      t.integer :runtime
      t.string :thumbnail
      t.references :comedians #sets up "comedian id" column, makes datatype Bigint. tells this table that this is related to comedians table

      t.timestamps
    end
  end
end
