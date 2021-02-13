feature 'choose move' do
  scenario 'check radio button is selected' do
    fill_in_name
    choose "Rock"
    expect(page).to have_checked_field('Rock')
  end
end