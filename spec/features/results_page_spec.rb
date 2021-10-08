feature 'Results ' do
  scenario 'display with correct result' do
    allow_any_instance_of(Array).to receive(:sample).and_return('Rock')
    enter_details_and_play
    expect(page).to have_content('Tom vs. Computer')
    expect(page).to have_content('Tom chose Paper')
    expect(page).to have_content('Computer chose Rock')
    expect(page).to have_content("Player wins!")
    expect(page).to have_button('Restart')
  end
end
