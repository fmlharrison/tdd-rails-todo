require 'rails_helper'

feature "user visits homepage" do
  scenario "it's a success" do
    visit root_path
    
    expect(page).to have_css 'h1', text: 'Todos'
  end
end
