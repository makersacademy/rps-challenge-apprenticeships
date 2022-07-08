# feature 'test page' do
#   scenario 'visit test page' do
#     visit '/test'
#     expect(page).to have_content('home page')
#   end
# end

feature 'Enter name' do
  scenario 'submitting name' do
    # sign_in_and_play
    visit('/')
    fill_in :player_name, with: 'Hannah'
    click_button 'Submit'
    # save_and_open_page # will save the web page and open the browser to display it

    expect(page).to have_content 'Hannah vs. Computer'
  end
end
