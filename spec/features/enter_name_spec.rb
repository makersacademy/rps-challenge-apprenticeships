require './app'

feature 'enter name' do
  scenario 'visiting homepage, entering name and submitting' do
    visit '/'
    fill_in :name, with: 'George'
    click_button 'Submit'
    expect(page).to have_content 'Welcome George!'
  end
end
