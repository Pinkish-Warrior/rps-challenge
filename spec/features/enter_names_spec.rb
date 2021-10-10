# in spec/features/enter_names_spec.rb

feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_name, with: 'Player'
    click_button 'Submit'
      
    save_and_open_page
      
    expect(page).to have_content 'Player'
  end
end  
