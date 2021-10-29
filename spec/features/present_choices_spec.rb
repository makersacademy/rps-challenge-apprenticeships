require './app'

# The marketeer is presented with three choices
# rock, paper and scissors

feature '#choices' do 
  scenario 'present rock, paper, scissor options' do 
    visit '/'
    fill_in :player_name, with: "Shanice"
    click_button 'Submit'
    click_link 'Play Game'
   
    expect(page).to have_button('Rock')
    expect(page).to have_button('Paper')
    expect(page).to have_button('Scissors')
  end 
end 