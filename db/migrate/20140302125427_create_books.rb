class CreateBooks < ActiveRecord::Migration
  def change
    drop_table :books
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :genre
      t.string :genre_2
      t.string :genre_3
      t.date :date_of_publication
      t.string :link
      t.text :summary
      t.string :buy_link

      t.timestamps
    end
  end
end
