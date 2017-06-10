class CreateMatches < ActiveRecord::Migration[5.1]
  def change
    create_table :matches do |t|
      t.text :pgn

      t.timestamps
    end
  end
end
