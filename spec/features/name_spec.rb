feature 'add name' do
  scenario 'user enters name' do
    fill_in_name
    expect(page).to have_content "Tom"
  end
end