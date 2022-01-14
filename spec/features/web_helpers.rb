def register_name
  @name = "Chuck Norris"
  visit('/')
  fill_in('name', with: @name)
  click_button('submit')
end