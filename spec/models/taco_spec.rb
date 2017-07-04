require 'rails_helper'

describe Taco do
  it 'creates a steak taco' do
    @taco = create(:taco, :steak)
    expect(@taco.meat).to eq('steak')
  end

  it 'creates a steak taco with salsa' do
    @taco = create(:taco, :steak, :with_salsa)
    expect(@taco.meat).to eq ('steak')
    expect(@taco.salsa).to eq(true)
  end

  it 'creates a chicken taco with fries' do
    @taco = create(:taco, :chicken, :with_fries)
    expect(@taco.meat).to eq ('chicken')
    expect(@taco.fries).to eq(true)
  end

  it 'creates a pork taco with a note' do
    @taco = create(:taco, :pork, :with_salsa)
    @taco.notes = 'Well done'
    expect(@taco.meat).to eq ('pork')
    expect(@taco.notes).not_to eq('')
  end

  it 'creates a pork taco with all the sides and a note' do
    note = 'I want it all!'
    @taco = create(:taco, :pork, :with_all_sides)
    @taco.notes = note
    expect(@taco.meat).to eq ('pork')
    expect(@taco.has_all_sides?).to eq(true)
    expect(@taco.notes).to eq(note)
  end

  it 'fails to create a lamb meat taco' do
    #@taco = create(:taco, :lamb, :with_all_sides) #Fails promptly with error
    @taco = Taco.new(meat: 'lamb')
    expect(@taco).to_not be_valid
  end
end