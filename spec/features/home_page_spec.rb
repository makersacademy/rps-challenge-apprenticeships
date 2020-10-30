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
  scenario 'expect play route to have three buttons - rock paper and scissors' do
    visit '/'
    fill_in :name_entry, with: 'Ollie'
    click_button :Submit
    expect(page).to have_selector(:link_or_button, 'Rock')
    expect(page).to have_selector(:link_or_button, 'Paper')
    expect(page).to have_selector(:link_or_button, 'Scissors')
  end
  scenario 'enter name and click rock' do
    visit '/'
    fill_in :name_entry, with: 'Ollie'
    click_button :Submit
    click_button :rock
    allow_any_instance_of(Rps).to receive(:play).and_return('You won!')
    expect(page).to have_content('You won!')
  end
end
