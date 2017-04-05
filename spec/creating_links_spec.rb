
feature 'submit link' do
  scenario 'form to submit new link' do
    visit '/links/new'
    fill_in(:title, with: 'connie')
    fill_in(:link, with: 'www.connie.com')
    click_button 'Submit'

    expect(current_path).to eq '/links'

    within 'ul#links' do
      expect(page).to have_content('connie')
    end
  end
end
