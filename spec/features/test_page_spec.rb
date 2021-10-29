feature 'test page' do
  scenario 'visit home page' do
    visit '/'
    expect(page).to have_content('Welcome')
  end
  
  scenario 'checks button to register can be clicked' do 
    visit '/'
    expect(page).to have_selector(:link_or_button, 'register to play')
    click_on 'register to play'
    expect(page).to have_content 'Player 1:'
  end 

end
