require_relative '../../app.rb'

feature 'index page' do
  scenario 'the player visits the index page' do
    visit '/'
    expect(page).to have_content 'Welcome!'
  end
end

feature 'name form' do
  scenario 'the player enters their name and sees it on the next page' do
    visit '/'
    fill_in 'name1', with: 'Dan'
    click_button('submit')
    expect(page).to have_content 'Dan'
  end
end

feature 'rock paper scissors game' do
  scenario 'the player enters an answer and sees it on the next page' do
    visit '/'
    fill_in 'name1', with: 'Dan'
    fill_in 'answer', with: 'Rock'
    click_button('submit')
    expect(page).to have_content 'Dan'
    expect(page).to have_content 'Rock'
  end

end