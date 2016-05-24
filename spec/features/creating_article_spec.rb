require 'rails_helper'

# feature test
RSpec.feature "Creating Articles" do
#   make scenario
#   some of these methods are rspec, others capybara
  scenario "A user creates a new article" do
    visit "/"
    click_link "New Article"
    fill_in "Title", with: "Creating first article"
    fill_in "Body", with: "Lorem Ipsum"
    click_button "Create Article"
    expect(page).to have_content("Article has been created")
    expect(page.current_path). to eq(articles_path)
  end
  
  scenario "A user fails to creates a new article" do
   visit "/"
    click_link "New Article"
    fill_in "Title", with: ""
    fill_in "Body", with: ""
    click_button "Create Article"
#     want to see failure msg
    expect(page).to have_content("Article has not been created")
    expect(page).to have_content("Title can't be blank")
    expect(page).to have_content("Body can't be blank")

  end
end