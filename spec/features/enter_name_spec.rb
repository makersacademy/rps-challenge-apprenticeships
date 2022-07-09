# feature 'test page' do
#   scenario 'visit test page' do
#     visit '/test'
#     expect(page).to have_content('test page')
#   end
# end

feature 'homepage' do
    scenario 'to have a submit button' do
      visit '/'
      expect(page).to have_button('Submit')
  end

  scenario 'to fill in the form' do
    visit '/'
    expect(page.fill_in 'Enter your name', with: 'Miranda')
  end

  scenario 'form to post content on /play page' do
    visit '/'
    page.fill_in 'Enter your name', with: 'Miranda'
    page.click_on 'Submit'
    expect(page).to have_content 'Miranda\'s turn to play'
  end
end