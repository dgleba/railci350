require 'rails_helper'

RSpec.describe "Cilisting1s", type: :request do
  describe "GET /cilisting1s" do
    it "works! (now write some real specs)" do
      get cilisting1s_path
      expect(response).to have_http_status(200)
    end
  end
end
