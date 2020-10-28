feature 'test that the form is submitted' do
  scenario 'enter name and birth day and month' do
    visit('/')
    fill_in('name', with: 'Ben')
    fill_in('day', with: '31')
    select('August', from: 'select_month')
    click_button('go')
    expect(page).to have_content 'Ben'
  end

  scenario 'enter todays date and get happy birthday' do
    visit('/')
    t = Time.now
    month = t.strftime("%B")

    fill_in('name', with: 'Ben')
    fill_in('day', with: t.day)
    select(month, from: 'select_month')
    click_button('go')
    expect(page).to have_content 'Happy Birthday Ben!'
  end
end
