require 'rails_helper'

feature 'user can search for foods containing sweet potatoes' do

  scenario 'user submits sweet potatoes search' do

    visit '/'

    fill_in 'search', with: 'sweet potatoes'
    click_on 'Search'
    expect(current_path).to eq(foods_path)
  end

end
