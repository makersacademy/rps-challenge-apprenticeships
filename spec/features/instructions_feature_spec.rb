feature 'Instructions' do
  scenario 'display instructions image' do
    visit '/'
    click_button('1. Rules')
    expect(page).to have_xpath("//img[@src='RPSLS.png']")
  end
end