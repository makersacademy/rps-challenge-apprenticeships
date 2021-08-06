feature 'Enter names' do
  scenario 'submitting names' do
    signinandplay
    
    save_and_open_page # will save the web page and open the browser to display it
    
    expect(page).to have_content 'Enter your name:'
  end
end