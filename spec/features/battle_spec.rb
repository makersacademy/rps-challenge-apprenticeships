feature 'battle' do

  scenario 'player chooses attack and receives confirmation' do
    sign_in
    click_button 'Rock'
    expect(page).to have_content 'Wilbur chose Rock'
  end

  scenario 'the game will display the CPUs random choice' do
    sign_in
    click_button 'Rock'

    expect(page).to satisfy {
      page.has_content?('CPU chose Rock') || 
      page.has_content?('CPU chose Paper') || 
      page.has_content?('CPU chose Scissors')
    }
    
  end

end
