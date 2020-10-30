def sign_in_and_play
    visit('/')
    fill_in :player_1_name, with: 'Dan'
    fill_in :player_2_name, with: 'Eddie'
    click_button 'Submit'
end

def select_and_submit_draw
  select "Rock", :from => "p1move"
  select "Rock", :from => "p2move"
  click_button "Submit moves"
end

def select_and_submit_p1win
  select "Rock", :from => "p1move"
  select "Scissors", :from => "p2move"
  click_button "Submit moves"
end

def select_and_submit_p2win
  select "Rock", :from => "p1move"
  select "Paper", :from => "p2move"
  click_button "Submit moves"
end