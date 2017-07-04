require 'rails_helper'

feature 'Create a taco' do
  scenario 'creating a pork taco with fries and add a note' do
    visit '/'
    choose 'Pork'
    check 'Fries'
    click_button('Order Taco')
  end
end