feature 'Displays winner name'do
  scenario 'it displays the name of the winner' do
    # INCOMPLETE - PLACE HOLDER
    register_and_play
    click_button "Rock"
    expect(page).to have_content("Solution")
  end
end