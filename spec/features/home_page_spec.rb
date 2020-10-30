feature 'home page' do
  scenario 'show correct content' do
    visit '/'
    expect(page).to have_content('Welcome to Rock, Paper, Scissors!')
  end
  scenario 'enter name and click submit' do
    visit '/'
    fill_in :name_entry, with: 'Ollie'
    click_button :Submit
    expect(page).to have_content('Welcome, Ollie - what is your move?')
  end
  # scenario 'expect play route to have three buttons - rock paper and scissors' do
  #   visit '/'
  #   fill_in :name_entry, with: 'Ollie'
  #   click_button :Submit
  #   expect(page).to have_selector(:link_or_button, 'rock')
  #   expect(page).to have_selector(:link_or_button, 'paper')
  #   expect(page).to have_selector(:link_or_button, 'scissors')
  # end
end
