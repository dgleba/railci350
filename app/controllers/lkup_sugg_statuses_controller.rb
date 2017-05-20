class LkupSuggStatusesController < ApplicationController
before_filter :authenticate_user!
  # before_action :set_lkup_sugg_status, only: [:show, :edit, :update, :destroy]

  #cancancan
  load_and_authorize_resource


  # cancancan..
  #load_and_authorize_resource :lkup_sugg_status

  # GET /lkup_sugg_statuses
  def index
    @q = @lkup_sugg_statuses.search params[:q]
    @lkup_sugg_statuses = @q.result.page(params[:page])
  end

  # GET /lkup_sugg_statuses/1
  def show
  end

  # GET /lkup_sugg_statuses/new
  def new
  end

  # GET /lkup_sugg_statuses/1/edit
  def edit
  end

  # POST /lkup_sugg_statuses
  def create
    respond_to do |format|
      if @lkup_sugg_status.save
        format.html { redirect_to @lkup_sugg_status, notice: t('success_create') }
        format.json { render :show, status: :created, location: @lkup_sugg_status }
      else
        format.html { render :new }
        format.json { render json: @lkup_sugg_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lkup_sugg_statuses/1
  def update
    respond_to do |format|
      if @lkup_sugg_status.update(lkup_sugg_status_params)
        format.html { redirect_to @lkup_sugg_status, notice: t('success_update') }
        format.json { render :show, status: :ok, location: @lkup_sugg_status }
      else
        format.html { render :edit }
        format.json { render json: @lkup_sugg_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lkup_sugg_statuses/1
  def destroy
    @lkup_sugg_status.destroy
    respond_to do |format|
      format.html { redirect_to lkup_sugg_statuses_url, notice: t('success_destroy') }
      format.json { head :no_content }
    end
  end

  private

  # Only allow a trusted parameter "white list" through.
  def lkup_sugg_status_params
    params.require(:lkup_sugg_status).permit(:name, :sort, :active_status)
  end
end
