feature 'home page' do

  scenario 'visit home page' do
    visit '/'
    expect(page).to have_content('Enter your name')
  end

  scenario 'submit form with name' do
    sign_in_and_submit
    expect(page).to have_content('Hi Meg, this is a webpage for playing rock, paper, scissors')
  end
end