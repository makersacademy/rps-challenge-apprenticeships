feature 'Saves name after playing' do
  scenario 'Page welcomes player after 1 cycle' do
    fill_name_and_submit
    find('#rock').click
    click_button 'Play'
    click_link 'Go again?'
    expect(page).to have_content 'Ronald'
  end

  scenario 'Page remembers player name after 3 cycles' do
    fill_name_and_submit
    3.times { click_rock_and_go_again }
    expect(page).to have_content 'Ronald'
  end
end