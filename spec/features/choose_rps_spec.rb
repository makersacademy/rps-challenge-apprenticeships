feature 'Player can make a choice of rock/paper/scissors' do
  scenario 'Player can click on either rock/paper/scissors button' do
  visit ('/play')
  page.click_button('Rock')
  end
end