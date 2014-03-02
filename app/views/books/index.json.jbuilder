json.array!(@books) do |book|
  json.extract! book, :id, :title, :author, :genre, :genre_2, :genre_3, :date_of_publication, :link, :summary, :buy_link
  json.url book_url(book, format: :json)
end
