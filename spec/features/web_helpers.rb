def name_and_play
  visit '/'
  fill_in :player, with: 'Rosie'
  click_button 'submit'
end 