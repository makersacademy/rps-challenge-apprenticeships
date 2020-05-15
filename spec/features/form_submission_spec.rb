feature 'Name submission' do
  scenario 'can submit name with form' do
    visit '/'
    fill_in('name', :with => 'Joe')
    click_on('Fight!')
    save_and_open_page
    expect(page).to have_content 'Joe'
  end
end