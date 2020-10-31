feature 'Webpages loading correctly' do
  scenario 'Webpage returns status code 200' do
    visit '/'
    expect(page.status_code).to eq(200)
  end

  scenario 'Displays all text as expected' do
    visit '/'
    expect(page).to have_content('Rock Paper Scissors', 'Enter name below to start:')
  end

  scenario 'Displays name text field' do
    visit '/'
    expect(page).to have_field('name')
  end

  scenario 'Displays submit button' do
    visit '/'
    expect(page).to have_button('Submit')
  end

  scenario 'Clicking submit button on index should redirect to play' do
    submit_name
    expect(page).to have_content("Click icon to take turn")
  end

  scenario 'Play view displays all expected text' do
    submit_name
    expect(page).to have_content('Rock Paper Scissors', 'Click icon to take turn')
  end

  scenario 'Play view displays rock button' do
    submit_name
    expect(page).to have_button("Rock")
  end

  scenario 'Play view displays paper button' do
    submit_name
    expect(page).to have_button("Paper")
  end

  scenario 'Play view displays scissors button' do
    submit_name
    expect(page).to have_button("Scissors")
  end
end
