require 'rails_helper'

RSpec.describe "Tasks", type: :request do
  describe "GET /tasks" do
  	it "display some tasks" do
  		page.should have_content 'go to bed'
  	end
  end
end
