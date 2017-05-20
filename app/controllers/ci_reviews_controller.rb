class CiReviewsController < ApplicationController
before_filter :authenticate_user!
  # before_action :set_ci_review, only: [:show, :edit, :update, :destroy]

  #cancancan
  load_and_authorize_resource


  # cancancan..
  #load_and_authorize_resource :ci_review

  # GET /ci_reviews
  def index
    @q = @ci_reviews.search params[:q]
    @ci_reviews = @q.result.page(params[:page])
  end

  # GET /ci_reviews/1
  def show
  end

  # GET /ci_reviews/new
  def new
  end

  # GET /ci_reviews/1/edit
  def edit
  end

  # POST /ci_reviews
  def create
    respond_to do |format|
      if @ci_review.save
        format.html { redirect_to @ci_review, notice: t('success_create') }
        format.json { render :show, status: :created, location: @ci_review }
      else
        format.html { render :new }
        format.json { render json: @ci_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ci_reviews/1
  def update
    respond_to do |format|
      if @ci_review.update(ci_review_params)
        format.html { redirect_to @ci_review, notice: t('success_update') }
        format.json { render :show, status: :ok, location: @ci_review }
      else
        format.html { render :edit }
        format.json { render json: @ci_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ci_reviews/1
  def destroy
    @ci_review.destroy
    respond_to do |format|
      format.html { redirect_to ci_reviews_url, notice: t('success_destroy') }
      format.json { head :no_content }
    end
  end

  private

  # Only allow a trusted parameter "white list" through.
  def ci_review_params
    params.require(:ci_review).permit(:project_number, :suggestion_status, :owner, :project_description, :comments, :originator, :link, :linkmore, :team, :wc_idea_date, :ciid, :updatedtime)
  end
end
