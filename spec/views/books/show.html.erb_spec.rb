require 'spec_helper'

describe "books/show" do
  before(:each) do
    @book = assign(:book, stub_model(Book,
      :title => "Title",
      :author => "Author",
      :genre => "Genre",
      :genre_2 => "Genre 2",
      :genre_3 => "Genre 3",
      :link => "Link",
      :summary => "MyText",
      :buy_link => "Buy Link"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/Author/)
    rendered.should match(/Genre/)
    rendered.should match(/Genre 2/)
    rendered.should match(/Genre 3/)
    rendered.should match(/Link/)
    rendered.should match(/MyText/)
    rendered.should match(/Buy Link/)
  end
end
