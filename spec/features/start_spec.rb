feature 'start game' do
  scenario 'user sees options rock, paper, scissors' do
    enter_name_submit
    click_link "Start"
    expect(page).to have_content 'Choose rock, paper, or scissors'
  end
end
