feature 'Instructions' do
  scenario 'display instructions image' do
    visit '/'
    click_button('1. Instructions')
    expect(page).to have_xpath('RPSLS.png')
  end
end