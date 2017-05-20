json.extract! ci_review, :id, :project_number, :suggestion_status, :owner, :project_description, :comments, :originator, :link, :linkmore, :team, :wc_idea_date, :ciid, :updatedtime, :created_at, :updated_at
json.url ci_review_url(ci_review, format: :json)
