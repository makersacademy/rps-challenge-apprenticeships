# in spec/features/enter_names_spec.rb

feature 'Enter names' do
  scenario 'submitting name' do
    sign_in_and_play
    expect(page).to have_content 'Sherlock'
  end

scenario 'computer is pre-assigned' do
sign_in_and_play
  expect(page).to have_content 'Computer'
end

end
