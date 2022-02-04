feature 'test page' do
  scenario 'visit test page' do
    visit '/'
    expect(page).to have_content("What's your name?")
  end

  scenario 'name can be entered' do
    visit '/'
    fill_in 'name', :with => 'Fred'
    click_button 'submit'
    expect(page).to have_content("Welcome Fred!")
  end
end
