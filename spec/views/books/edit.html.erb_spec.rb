require 'spec_helper'

describe "books/edit" do
  before(:each) do
    @book = assign(:book, stub_model(Book,
      :title => "MyString",
      :author => "MyString",
      :genre => "MyString",
      :genre_2 => "MyString",
      :genre_3 => "MyString",
      :link => "MyString",
      :summary => "MyText",
      :buy_link => "MyString"
    ))
  end

  it "renders the edit book form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", book_path(@book), "post" do
      assert_select "input#book_title[name=?]", "book[title]"
      assert_select "input#book_author[name=?]", "book[author]"
      assert_select "input#book_genre[name=?]", "book[genre]"
      assert_select "input#book_genre_2[name=?]", "book[genre_2]"
      assert_select "input#book_genre_3[name=?]", "book[genre_3]"
      assert_select "input#book_link[name=?]", "book[link]"
      assert_select "textarea#book_summary[name=?]", "book[summary]"
      assert_select "input#book_buy_link[name=?]", "book[buy_link]"
    end
  end
end
