feature 'Paper' do
  scenario 'user picks paper' do
    enter_name_submit
    click_link "Start"
    click_link "Paper"
    expect(page).to have_content 'You chose paper'
  end
end
