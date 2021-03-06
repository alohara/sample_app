require 'spec_helper'

describe "Athentication" do

  subject { page }
  
  describe "signin page" do
    before { visit signin_path }
	
	describe "with invalid information" do
	  before {click_button "Sign in" }
	  
	it { should have_selector('title', text: 'Sign in') }
	it { should have_selector('div.alert.alert-error', text: 'Invalid') }
	it { should have_selector('h1', text: 'Sign in') }
	end
  end
end