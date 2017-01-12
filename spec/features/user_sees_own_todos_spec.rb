require "rails_helper"

feature 'User sees own todos' do
  scenario "dosen't see other's todos" do
    Todo.create(title: "Buy milk", email: "other@email.com")

    sign_in_as "person@email.com"

    expect(page).not_to have_css ".todos li", text: "Buy milk"
  end
end
