require 'rails_helper'

feature "User visits the homepage" do
  scenario "successfully loads root path" do
    visit root_path

    expect(page).to have_css 'h1', text: 'Todo'
  end
end