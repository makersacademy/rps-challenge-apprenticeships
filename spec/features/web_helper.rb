require './spec/spec_helper.rb'

def sign_in_and_play
  visit '/'
  fill_in('player_name', with: 'Jerome')
  click_button('submit')
end