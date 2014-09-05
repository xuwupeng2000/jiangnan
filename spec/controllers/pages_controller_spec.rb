require 'rails_helper'

RSpec.describe PagesController, :type => :controller do

  describe "GET resume" do
    it "returns http success" do
      get :resume
      expect(response).to be_success
    end
  end

end
