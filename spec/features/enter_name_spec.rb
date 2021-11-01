feature 'test enter name' do
  scenario 'submitting name' do
    sign_in_and_play
    expect(page).to have_content "Raul: welcome to the RPS game"
  end
end