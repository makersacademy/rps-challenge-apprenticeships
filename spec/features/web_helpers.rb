def sign_in_as_quincy
  visit '/'
  fill_in :name, with: 'Quincy'
  click_button('Play')
end

def sign_in_and_choose_rock
  visit '/'
  fill_in :name, with: 'Quincy'
  click_button('Play')
  click_button('Rock')
end

def sign_in_and_choose_paper
  visit '/'
  fill_in :name, with: 'Quincy'
  click_button('Play')
  click_button('Paper')
end

def sign_in_and_choose_scissors
  visit '/'
  fill_in :name, with: 'Quincy'
  click_button('Play')
  click_button('Scissors')
end