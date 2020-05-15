require './app'

feature 'Register to play' do
    scenario 'Player can register name to play RPS' do
        sign_in_and_play
      expect(page).to have_content('Chan')
    end
end
