require 'rails_helper'

feature 'restaurants' do
  context 'no restaurants have been added' do
    scenario 'should display a prompt to add a restaurant' do
      visit '/restaurants'
      expect(page).to have_content 'No restaurants yet'
      expect(page).to have_link 'Add a restaurant'
    end
  end

  context 'restaurants have been added' do
    before
      Restaurant.create(name: 'The Ox')
  end

    scenario 'display restaurants' do
      visit '/restaurants'
      expect(page).to have_content('The Ox')
      expect(page).not_to have_content('No restaurants yet')
    end


end