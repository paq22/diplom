class RoleGroupRightsController < ApplicationController
  before_action :set_role_group_right, only: [:show, :edit, :update, :destroy]

  # GET /role_group_rights
  # GET /role_group_rights.json
  def index
    @role_group_rights = RoleGroupRight.all
  end

  # GET /role_group_rights/1
  # GET /role_group_rights/1.json
  def show
  end

  # GET /role_group_rights/new
  def new
    @role_group_right = RoleGroupRight.new
  end

  # GET /role_group_rights/1/edit
  def edit
  end

  # POST /role_group_rights
  # POST /role_group_rights.json
  def create
    @role_group_right = RoleGroupRight.new(role_group_right_params)

    respond_to do |format|
      if @role_group_right.save
        format.html { redirect_to @role_group_right, notice: 'Role group right was successfully created.' }
        format.json { render :show, status: :created, location: @role_group_right }
      else
        format.html { render :new }
        format.json { render json: @role_group_right.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /role_group_rights/1
  # PATCH/PUT /role_group_rights/1.json
  def update
    respond_to do |format|
      if @role_group_right.update(role_group_right_params)
        format.html { redirect_to @role_group_right, notice: 'Role group right was successfully updated.' }
        format.json { render :show, status: :ok, location: @role_group_right }
      else
        format.html { render :edit }
        format.json { render json: @role_group_right.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /role_group_rights/1
  # DELETE /role_group_rights/1.json
  def destroy
    @role_group_right.destroy
    respond_to do |format|
      format.html { redirect_to role_group_rights_url, notice: 'Role group right was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_role_group_right
      @role_group_right = RoleGroupRight.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def role_group_right_params
      params.require(:role_group_right).permit(:role_id, :group_right_id, :parameter)
    end
end
