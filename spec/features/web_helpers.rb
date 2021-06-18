require 'spec_helper.rb'

def sign_in_and_play
  visit '/'
  fill_in :player, with: 'Starbuck'
  # fill_in 'player_2', with: 'The Cylons'
  click_button 'Play'
end
