feature 'name_page' do
  scenario 'visits page via link on home page' do
    visit '/'
    click_link('Play rock paper scissors!')
    expect(page).to have_content('This is the enter name page!')
  end

  scenario ''
end