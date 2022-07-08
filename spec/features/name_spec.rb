
feature 'Home Page' do
    scenario 'submit button' do
        visit '/'
        expect(page).to have_button('Submit')
    end
end
  