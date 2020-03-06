require './app'

feature 'home page' do
  scenario ('can register at homepage') do
    visit '/'
    expect(page).to have_content('register')
  end  
end
