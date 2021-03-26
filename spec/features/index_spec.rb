feature 'Welcome page' do
    scenario 'Player is asked to submit name' do
        visit('/')
        expect(page).to have_content 'Please fill in your name to start playing.'
    end
end

# feature 'Start game' do
#     scenario 'Player submits name to start game' do
#         visit('/')
#         fill_in(:player_1_name, with: 'Rob')
#         expect(page).to have_content 'Hi, Rob, please make your move.'
#     end
# end