feature 'choose move' do
  scenario 'user chooses rock, paper or scissors' do
    fill_in_name
    save_and_open_page
    choose "Rock"
    save_and_open_page
    expect(page).to have_checked_field('Rock')
  end
end