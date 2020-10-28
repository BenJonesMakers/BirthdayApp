feature 'test that the form is submitted' do
  scenario 'enter name and birth day and month' do
    visit('/')
    fill_in('name', with: 'Ben')
    fill_in('day', with: '31')
    select('August', from: 'select-month')
    click_button('go')
    expect(page).to have_content 'Ben'
  end
end
