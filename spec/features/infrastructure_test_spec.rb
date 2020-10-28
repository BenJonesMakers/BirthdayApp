feature 'testing infrastructure' do
  scenario 'can run the app and see the title' do
    visit('/')
    expect(page).to have_content 'Hello there!'
  end
end
