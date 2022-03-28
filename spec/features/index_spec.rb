feature 'Enter names' do
  scenario 'submitting names' do
    
    sign_in_and_play # will save the web page and open the browser to display it
    
    expect(page).to have_content "'Bob"
  end
end