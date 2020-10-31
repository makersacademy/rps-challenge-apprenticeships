feature 'instructions' do
  scenario 'visit front instructions and have an image' do
    visit '/'
    click_button("1.    Instructions   ")
    expect(page).to have_xpath("//img[@src='RPSLS.png']")
  end
end
