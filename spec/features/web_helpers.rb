def register_page
  visit "/"
  click_on "register to play"
end 

def fill_in_register_1player
  register_page
  fill_in :player1_name, with: "1player"
  click_on "add player"
end   

def fill_in_register_2player
  register_page
  click_on "MULTIPLAYER"
  fill_in :player1_name, with: "MyBrain"
  fill_in :player2_name, with: "Code"
  click_on "add players"
end   