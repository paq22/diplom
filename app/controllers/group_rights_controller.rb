class GroupRightsController < ApplicationController
  before_action :set_group_right, only: [:show, :edit, :update, :destroy]

  # GET /group_rights
  # GET /group_rights.json
  def index
    #@group_rights = GroupRight.all
    unless params[:id].nil?
      @group_rights = GroupRight.where(information_system_id: params[:id])
    else
      @group_rights = GroupRight.all
    end
    @group_rights = GroupRight.all.page(params[:page]).per(10)
    @page = params[:page]
    @page = 1 if @page.blank?
  end

  # GET /group_rights/1
  # GET /group_rights/1.json
  def show
  end

  # GET /group_rights/new
  def new
    @group_right = GroupRight.new
  end

  # GET /group_rights/1/edit
  def edit
  end

  # POST /group_rights
  # POST /group_rights.json
  def create
    @group_right = GroupRight.new(group_right_params)

    respond_to do |format|
      if @group_right.save
        format.html { redirect_to @group_right, notice: 'Group right was successfully created.' }
        format.json { render :show, status: :created, location: @group_right }
      else
        format.html { render :new }
        format.json { render json: @group_right.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /group_rights/1
  # PATCH/PUT /group_rights/1.json
  def update
    respond_to do |format|
      if @group_right.update(group_right_params)
        format.html { redirect_to @group_right, notice: 'Group right was successfully updated.' }
        format.json { render :show, status: :ok, location: @group_right }
      else
        format.html { render :edit }
        format.json { render json: @group_right.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /group_rights/1
  # DELETE /group_rights/1.json
  def destroy
    @group_right.destroy
    respond_to do |format|
      format.html { redirect_to group_rights_url, notice: 'Group right was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_group_right
      @group_right = GroupRight.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def group_right_params
      params.require(:group_right).permit(:information_system_id, :group_name, :parameter,
                                  right_group_permitions_attributes: [:id, :_destroy, :permition_id, :parameter])     
    end
end
