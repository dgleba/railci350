class Cilisting1sController < ApplicationController
before_filter :authenticate_user!
  # before_action :set_cilisting1, only: [:show, :edit, :update, :destroy]

  #cancancan
  load_and_authorize_resource


  # cancancan..
  #load_and_authorize_resource :cilisting1

  # GET /cilisting1s
  def index
    @q = @cilisting1s.search params[:q]
    @cilisting1s = @q.result.page(params[:page])
  end

  # GET /cilisting1s/1
  def show
  end

  # GET /cilisting1s/new
  def new
  end

  # GET /cilisting1s/1/edit
  def edit
  end

  # POST /cilisting1s
  def create
    respond_to do |format|
      if @cilisting1.save
        format.html { redirect_to @cilisting1, notice: t('success_create') }
        format.json { render :show, status: :created, location: @cilisting1 }
      else
        format.html { render :new }
        format.json { render json: @cilisting1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cilisting1s/1
  def update
    respond_to do |format|
      if @cilisting1.update(cilisting1_params)
        format.html { redirect_to @cilisting1, notice: t('success_update') }
        format.json { render :show, status: :ok, location: @cilisting1 }
      else
        format.html { render :edit }
        format.json { render json: @cilisting1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cilisting1s/1
  def destroy
    @cilisting1.destroy
    respond_to do |format|
      format.html { redirect_to cilisting1s_url, notice: t('success_destroy') }
      format.json { head :no_content }
    end
  end

  private

  # Only allow a trusted parameter "white list" through.
  def cilisting1_params
    params.require(:cilisting1).permit(:ft, :project_number, :project_description, :owner, :planned_timing, :revised_timing, :estimated_cost, :savings_category, :annual_savings_dollars, :percent_complete, :comments, :originator, :team, :documents_complete, :one_time_savings, :hard_soft_savings, :soft_dollars, :il1_target_date, :il2_target_date, :il3_target_date, :il4_target_date, :il5_target_date, :wc_idea_date, :actual_implementation_date, :enter_in_wc, :area, :updatedtime, :id_wc, :environmental, :ease_of_implementation, :submit, :next_steps, :suggestion_status, :suggestion_status_updated_at, :group, :metric_impact, :gift2_4_suggestion, :gift_4_suggestion, :il_current, :createdtime, :link, :linkmore, :display, :ciid)
  end
end
