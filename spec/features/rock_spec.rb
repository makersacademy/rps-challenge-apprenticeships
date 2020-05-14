feature 'Rock' do
  scenario 'user picks rock' do
    enter_name_submit
    click_link "Start"
    click_link "Rock"
    expect(page).to have_content 'You chose rock'
  end
end
