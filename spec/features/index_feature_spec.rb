feature 'Webpage loading correctly' do
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
end
