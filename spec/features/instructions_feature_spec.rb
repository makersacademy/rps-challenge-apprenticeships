feature 'Instructions' do
  scenario 'display instructions image' do
    visit '/'
    click_button('1. Rules')
    save_and_open_page
    expect(page).to have_xpath("//img[@src='RPSLS.png']")
  end
end