feature 'add name' do
  scenario 'user enters name' do
    visit ('/')
    fill_in :name, with: "Tom"
    click_button 'Play'
  end
end