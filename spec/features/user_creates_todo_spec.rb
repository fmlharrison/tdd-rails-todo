require 'rails_helper'

feature 'user creates a todo' do
  scenario 'its sucessful' do
    visit root_path

    click_on "Add new todo"
    fill_in "Title", with: "Take out the trash"
    click_on "Submit"

    expect(page).to have_css '.todos li', text: 'Take out the trash'
  end
end
