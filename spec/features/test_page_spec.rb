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
  end