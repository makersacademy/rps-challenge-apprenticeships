feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
  
    save_and_open_page 
    
    expect(page).to have_content 'Sign in to play'
  end
end