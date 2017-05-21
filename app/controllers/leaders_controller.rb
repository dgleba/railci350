class LeadersController < ApplicationController
before_filter :authenticate_user!
  # before_action :set_leader, only: [:show, :edit, :update, :destroy]

  #cancancan
  load_and_authorize_resource


  # cancancan..
  #load_and_authorize_resource :leader

  # GET /leaders
  def index
    @q = @leaders.search params[:q]
    @leaders = @q.result.page(params[:page])
  end

  # GET /leaders/1
  def show
  end

  # GET /leaders/new
  def new
  end

  # GET /leaders/1/edit
  def edit
  end

  # POST /leaders
  def create
    respond_to do |format|
      if @leader.save
        format.html { redirect_to @leader, notice: t('success_create') }
        format.json { render :show, status: :created, location: @leader }
      else
        format.html { render :new }
        format.json { render json: @leader.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /leaders/1
  def update
    respond_to do |format|
      if @leader.update(leader_params)
        format.html { redirect_to @leader, notice: t('success_update') }
        format.json { render :show, status: :ok, location: @leader }
      else
        format.html { render :edit }
        format.json { render json: @leader.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /leaders/1
  def destroy
    @leader.destroy
    respond_to do |format|
      format.html { redirect_to leaders_url, notice: t('success_destroy') }
      format.json { head :no_content }
    end
  end

  private

  # Only allow a trusted parameter "white list" through.
  def leader_params
    params.require(:leader).permit(:clocknum, :Name, :fullcommonname, :ci_leader, :comment, :updatedtime, :createdtime, :position, :shift, :dept, :Common_Name, :fullname, :Middleproper, :Lastproper, :Firstproper, :First, :Middle, :Last)
  end
end
