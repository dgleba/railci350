require 'rails_helper'

RSpec.describe "LkupSuggStatuses", type: :request do
  describe "GET /lkup_sugg_statuses" do
    it "works! (now write some real specs)" do
      get lkup_sugg_statuses_path
      expect(response).to have_http_status(200)
    end
  end
end
