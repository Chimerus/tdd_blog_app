require "rails_helper"

RSpec.feature "Listing Articles" do
  
  before do
    @article1 = Article.create(title: "The 1rst article", body: "Body of first article")
    @article1 = Article.create(title: "The 2nd article", body: "Body of second article")
  end

  scenario "List all articles" do
    visit "/"

    expect(page).to have_content(@article1.title)
    expect(page).to have_content(@article1.body)
    expect(page).to have_content(@article2.title)
    expect(page).to have_content(@article2.body)
    expect(page).to have_link(@article1.title)
    expect(page).to have_link(@article2.title)
  end

end