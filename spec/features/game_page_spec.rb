feature 'Playing RPS' do
  scenario "When I select 'Rock', I will lose if the machine selects 'Paper'" do
    allow_any_instance_of(@opponent_choice).to receive(:sample).and_return(:paper)
    visit '/'
    fill_in('name', with: 'Jordan')
    click_button('Submit')
    click_button('Rock')
    expect(page).to have_content "You lose :("
  end
end