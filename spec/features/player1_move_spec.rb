# feature 'play rock paper scissors' do
#     scenario 'play rock' do
#       sign_in_and_play
#       choose(option: 'rock')
#       click_button('submit')
#       expect(page).to have_content 'Anita played: rock'
#     end
#     scenario 'play paper' do
#         sign_in_and_play
#         choose(option: 'paper')
#         click_button('submit')
#         expect(page).to have_content 'Anita played: paper'
#     end
#     scenario 'play scissors' do
#         sign_in_and_play
#         choose(option: 'scissors')
#         click_button('submit')
#         expect(page).to have_content 'Anita played: scissors'
#     end
# end