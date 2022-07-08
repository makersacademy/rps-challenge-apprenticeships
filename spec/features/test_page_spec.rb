# feature 'test page' do
#   scenario 'visit test page' do
#     visit '/test'
#     expect(page).to have_content('home page')
#   end
# end


feature 'Enter name' do
  scenario 'submitting name' do
    sign_in_and_play
    # save_and_open_page # will save the web page and open the browser to display it
    expect(page).to have_content 'Hannah vs. Computer'
  end
end

feature 'Display reasults' do
  scenario 'choose rock' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content 'Hannah, you chose Rock.'
  end

  scenario 'choose paper' do
    sign_in_and_play
    click_button 'Paper'
    expect(page).to have_content 'Hannah, you chose Paper.'
  end

  scenario 'choose scissors' do
    sign_in_and_play
    click_button 'Scissors'
    expect(page).to have_content 'Hannah, you chose Scissors.'
  end
end

