require 'spec_helper'
require 'turn'

feature 'index page' do 

  subject(:turn) { Turn.new(options)} #These two lines set the conditions for laters tests
  let(:options) { {"player_name" => "Catherine", "player_shape" => :rock, "op_shape" => :scissors} }

  scenario 'visit index page' do 
    visit '/'
    expect(page).to have_content('Welcome!')
  end

  scenario 'Register and see my name' do
    visit '/'
    fill_in 'p1_name', with: 'Astrid'
    click_button 'Submit'
    expect(page).to have_content 'Hello, Astrid'
  end

  # subject(:turn) { Turn.new(options)} #These two lines set the conditions for laters tests
  # let(:options) { {"player_name" => "Catherine", "player_shape" => :rock, "op_shape" => :scissors} }

  scenario 'Register and see my name' do 
    visit '/play'
    expect(turn.player_name).to eq "Catherine"
  end 



end 
