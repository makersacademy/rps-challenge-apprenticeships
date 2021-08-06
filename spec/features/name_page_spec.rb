feature 'name_page' do
  scenario 'visits page via link on home page' do
    visit '/'
    click_link('Play rock paper scissors!')
    expect(page).to have_content('Please enter your name!')
  end

  # scenario 'enters name in input field and clicks submit' do
    
  # end
end