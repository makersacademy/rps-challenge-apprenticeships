feature 'Register name' do 
    scenario 'submitting name' do 
    sign_in_and_play
    save_and_open_page

    expect(page).to have_content 'Welcome Jenny! Ready to play Rock, Paper, Scissors? Make your move:'
    end
end