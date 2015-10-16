require 'rails_helper'

feature 'endorsing reviews' do

  before do
    kfc = Restaurant.create(name: 'KFC')
    kfc.reviews.create(rating: 3, thoughts: 'It was an abomination')
  end

  scenario 'a user can endorse a review, which increments the endorsement count', js: true do
    visit '/restaurants'
    click_link 'Endorse'
    expect(page).to have_content('1 endorsement')
  end

  scenario 'displays the correct number of endorsements' do
    visit '/restaurants'
    expect(page).to have_content('0 endorsements')
  end





end
