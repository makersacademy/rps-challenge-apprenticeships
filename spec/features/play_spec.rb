feature 'play' do
  scenario 'player sees a message greeting them' do
    visit '/'
    fill_in 'name', with: 'jackie'
    click_button 'submit'
    expect(page).to have_content 'Hi jackie'
  end

  scenario 'player can choose an option from the select box' do
    visit '/'
    fill_in 'name', with: 'jackie'
    click_button 'submit'
    select('Rock', from: 'options')
    expect(page).to have_content 'Rock'
  end
end
