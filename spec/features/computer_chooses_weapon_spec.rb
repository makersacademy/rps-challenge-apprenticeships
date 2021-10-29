feature 'Computer generates a weapon' do
  scenario 'the opponents weapon is shown as well' do
    sign_in
    allow_any_instance_of(Computer).to receive(:weapon).and_return(:Rock)
    click_button 'Scissors'
    expect(page).to have_content("Computron: Rock")
  end
end
