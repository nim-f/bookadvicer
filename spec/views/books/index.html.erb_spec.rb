require 'spec_helper'

describe "books/index" do
  before(:each) do
    assign(:books, [
      stub_model(Book,
        :title => "Title",
        :author => "Author",
        :genre => "Genre",
        :genre_2 => "Genre 2",
        :genre_3 => "Genre 3",
        :link => "Link",
        :summary => "MyText",
        :buy_link => "Buy Link"
      ),
      stub_model(Book,
        :title => "Title",
        :author => "Author",
        :genre => "Genre",
        :genre_2 => "Genre 2",
        :genre_3 => "Genre 3",
        :link => "Link",
        :summary => "MyText",
        :buy_link => "Buy Link"
      )
    ])
  end

  it "renders a list of books" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Author".to_s, :count => 2
    assert_select "tr>td", :text => "Genre".to_s, :count => 2
    assert_select "tr>td", :text => "Genre 2".to_s, :count => 2
    assert_select "tr>td", :text => "Genre 3".to_s, :count => 2
    assert_select "tr>td", :text => "Link".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Buy Link".to_s, :count => 2
  end
end
