require './app.rb'
feature '' do
  scenario 'marketeer can enter their name' do
    visit '/'
    expect(page).to have_content('Please enter your name')
  end
end
