require 'rails_helper'

describe "Users", type: :request do

 
    describe "GET /sessions/new" do
        it "display login user and password" do
            visit new_session_path
            page.should have_content 'Log In'
        end
        it "goes to login page" do
            visit tasks_path
            click_link 'Log In'
            current_path.should == new_session_path
        end
        it "goes to sign up page" do
            visit tasks_path
            click_link 'Sign Up'
            current_path == new_user_path
        end
        it "should create an user" do
            visit new_user_path
            fill_in 'user_email', :with => 'test@test.com'
            fill_in 'user_password', :with => '123'
            fill_in 'user_password_confirmation', :with => '123'
            click_button 'Sign Up'
            current_path.should == root_path
            page.should have_content 'Logged in as test@test.com.'
        end
    end
end
