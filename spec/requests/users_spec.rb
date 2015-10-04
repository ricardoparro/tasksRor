require 'rails_helper'

describe "Users", type: :request do

 
    describe "GET /sessions/new" do
        it "display login user and password" do
            visit new_session_path
            page.should have_content 'Log In'
        end
        it "goes to login page" do
            visit tasks_path
            click_link 'login'
            current_path.should == new_session_path
        end
        it "goes to sign up page" do
            visit tasks_path
            click_link 'Sign Up'
            current_path == new_user_path
        end
    end
end
