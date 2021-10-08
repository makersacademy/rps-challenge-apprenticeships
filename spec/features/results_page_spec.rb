feature 'Results page' do
  scenario 'Should display results page with details' do
    allow_any_instance_of(Array).to receive(:sample).and_return('Rock')
    sign_in_and_play
    expect(page).to have_content('Foo vs. Computer')
    expect(page).to have_content('Foo chose Rock')
    expect(page).to have_content('Computer chose Rock')
    expect(page).to have_content('It\'s a draw!')
    expect(page).to have_button('Play Again')
  end
end