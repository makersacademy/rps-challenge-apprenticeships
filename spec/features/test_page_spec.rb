feature 'test page' do
  scenario 'visit test page' do
    visit '/test'
    expect(page).to have_content('test page')
  end
end

feature 'enter_name' do
  scenario 'submit name' do
    visit ('/')
    fill_in :player, with: 'Eunice'
    click_button 'Submit'
    expect(page).to have_content 'Eunice'
  end
end

# feature 'submit your choice' do
#   scenario 'submitted choice' do
#     visit ('/')
#     fill_in :player, with
#   end
# end