feature 'name' do
  scenario 'there is a blank text field to enter a name' do
    visit '/'
    expect(page).to have_field('name', type: 'text')
  end

  scenario 'there is a submit button' do
    visit '/'
    expect(page).to have_button('Submit')
  end

  scenario 'entering a name return the name as a paramater' do
    fill_in_name
    expect(page).to have_content 'JoJo'
  end
end
