# As Player 1,
# So I can start to win a game of Battle,
# I want my attack to reduce Player 2's HP

feature 'Hit Points' do
  scenario 'shows Player 2 HP' do
    sign_in_and_play
    click_button ("Attack")
    expect(page).to have_content 'Jonatan: 90HP'
    expect(page).not_to have_content 'Jonatan: 100HP'
  end
end
