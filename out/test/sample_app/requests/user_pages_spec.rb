require 'spec_helper'

describe "UserPages" do
  subject { page }
  describe "sign up page" do
    before { visit signup_path }

    it { should have_content('Sign up') }
    it { should have_title('Sign up') }
  end

  describe "profile page" do
    let(:user) { FactoryGirl.create(:user) }
    before { visit user_path(user) }
    it { should have_content(user.name) }
    it { should have_title(user.name) }
    it { should have_content(user.email) }
  end
end
