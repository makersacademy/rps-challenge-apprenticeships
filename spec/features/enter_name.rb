feature 'Enter name' do
  scenario 'submitting names' do
    sign_in_and_play

    save_and_open_page # will save the web page and open the browser to display it

    expect(page).to have_content 'Hello Kev!'
  end
end