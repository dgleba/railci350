require 'rails_helper'

RSpec.describe "CiReviews", type: :request do
  describe "GET /ci_reviews" do
    it "works! (now write some real specs)" do
      get ci_reviews_path
      expect(response).to have_http_status(200)
    end
  end
end
