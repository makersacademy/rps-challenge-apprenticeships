def fill_in_name
  visit '/'
  fill_in :name, with: 'JoJo'
  click_button 'Submit'
end

def fill_in_name_and_choose_rock
  fill_in_name
  choose 'Rock'
  click_button 'Submit'
end

def fill_in_name_and_choose_paper
  fill_in_name
  choose 'Paper'
  click_button 'Submit'
end

def fill_in_name_and_choose_scissors
  fill_in_name
  choose 'Scissors'
  click_button 'Submit'
end