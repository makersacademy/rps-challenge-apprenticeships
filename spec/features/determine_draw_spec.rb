feature 'Announce draw' do
  scenario 'in case of a draw, it is announced that no one won' do
    sign_in
    allow_any_instance_of(Computer).to receive(:weapon).and_return(:Scissors)
    click_button('Scissors')
    expect(page).to have_content("Nobody CRUSHES Nobody !!!")
  end
end
