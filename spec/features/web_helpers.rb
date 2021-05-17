def register_for_singleplayer_and_play
  visit('/')
  choose('Classic', allow_label_click: true)
  click_button 'Single Player'
  fill_in :name, with: 'Emily'
  click_button 'Play'
end

def register_for_multiplayer_and_play
  visit('/')
  choose('Classic', allow_label_click: true)
  click_button 'Multiplayer'
  fill_in :name, with: 'Emily'
  fill_in :name2, with: 'Monty'
  click_button 'Play'
end

def register_for_singleplayer_and_play_spock_variant
  visit('/')
  choose('Expert', allow_label_click: true)
  click_button 'Single Player'
  fill_in :name, with: 'Emily'
  click_button 'Play'
end
