  describe "the update a question process" do
    it "updates a question" do
      question = Question.create(:title => 'Install Node', :description => 'Problem', :author => 'Joe Jones')
      response = Response.create(:response => 'Download it', :name => 'Mary', :question_id => question.id)
      visit new_user_path
      fill_in 'Email', :with => 'joe@blow.com'
      fill_in 'Password', :with => 'password'
      fill_in 'Password confirmation', :with => 'password'
      click_button 'Click Here'
      click_on "New Question"
      fill_in 'Title', :with => 'Install Ember'
      fill_in 'Description', :with => 'Issues installing'
      fill_in 'Author', :with => 'A movie with Guy Ritchie'
      click_on 'Create Question'
      click_on "Install Node"
      click_on 'Update Question'
      fill_in 'Title', :with => 'Install Angular'
      fill_in 'Description', :with => 'Issues installing'
      fill_in 'Author', :with => 'A movie with Guy Ritchie'
      click_on 'Update Question'
      expect(page).to have_content "Install Angular"
    end
  end
