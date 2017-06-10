class CreateBooksAndMatches < ActiveRecord::Migration[5.1]
  def change
    create_table :books_matches, id: false do |t|
      t.belongs_to :book, index: true
      t.belongs_to :match, index: true
    end
  end
end
