feature 'play' do
  scenario 'player sees a message greeting them' do
    visit '/'
    fill_in 'name', with: 'jackie'
    click_button 'submit'
    expect(page).to have_content 'Hi jackie'
  end
end
