feature 'Webpages loading correctly' do
  scenario 'Webpage returns status code 200' do
    visit '/'
    expect(page.status_code).to eq(200)
  end

  scenario 'Displays all text and text fields as expected' do
    visit '/'
    expect(page).to have_content('Rock Paper Scissors')
    expect(page).to have_content('Enter name below to start:')
    expect(page).to have_field('name')
    expect(page).to have_button('Submit')
  end

  scenario 'Clicking submit button on index should redirect to play' do
    visit '/'
    fill_in "name", with: 'Bob'
    click_button 'Submit'
    expect(page).to have_content("Click button to take turn")
  end

  scenario 'Play view displays all expected content' do
    visit '/'
    fill_in "name", with: 'Bob'
    click_button 'Submit'
    expect(page).to have_content('Rock Paper Scissors')
    expect(page).to have_content("Click button to take turn")
    expect(page).to have_button("Rock")
    expect(page).to have_button("Paper")
    expect(page).to have_button("Scissors")
  end
end
