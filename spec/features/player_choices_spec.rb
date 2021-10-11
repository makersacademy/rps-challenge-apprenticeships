feature 'get player choice: rock' do
  scenario 'display choice: rock' do
    enter_name('Drew')
    click_button 'Rock'
    expect(page).to have_content 'Player Choice: Rock'
  end
end

feature 'get player choice: paper' do
  scenario 'display choice: paper' do
    enter_name('Drew')
    click_button 'Paper'
    expect(page).to have_content 'Player Choice: Paper'
  end
  end

feature 'get player choice: scissors' do
  scenario 'display choice: scissors' do
    enter_name('Drew')
    click_button 'Scissors'
    expect(page).to have_content 'Player Choice: Scissors'
  end
end
