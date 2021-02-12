feature 'choose move' do
  scenario 'check radio button is selected' do
    fill_in_name
    save_and_open_page
    choose "Rock"
    expect(page).to have_checked_field('Rock')
  end

    scenario 'check radio button is selected' do
      fill_in_name
      save_and_open_page
      choose "Rock"
      click_button "Play"
      expect(page).to have_content('rock')
    end
  
end