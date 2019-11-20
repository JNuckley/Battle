
def sign_in_and_play
  visit('/')
  fill_in :p1_name, with: 'Jo'
  fill_in :p2_name, with: 'Matt'
  click_button 'Submit'
end
