feature 'Random game choice' do
  scenario 'game randomly chooses rock, paper or scissors' do
    sign_in_and_play
    click_link 'Scissors'
    expect(page).to have_content 'Game chose scissors'
  end
end