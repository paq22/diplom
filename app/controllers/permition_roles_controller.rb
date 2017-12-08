class PermitionRolesController < ApplicationController
  before_action :set_permition_role, only: [:show, :edit, :update, :destroy]

  # GET /permition_roles
  # GET /permition_roles.json
  def index
    @permition_roles = PermitionRole.all
  end

  # GET /permition_roles/1
  # GET /permition_roles/1.json
  def show
  end

  # GET /permition_roles/new
  def new
    @permition_role = PermitionRole.new
  end

  # GET /permition_roles/1/edit
  def edit
  end

  # POST /permition_roles
  # POST /permition_roles.json
  def create
    @permition_role = PermitionRole.new(permition_role_params)

    respond_to do |format|
      if @permition_role.save
        format.html { redirect_to @permition_role, notice: 'Permition role was successfully created.' }
        format.json { render :show, status: :created, location: @permition_role }
      else
        format.html { render :new }
        format.json { render json: @permition_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /permition_roles/1
  # PATCH/PUT /permition_roles/1.json
  def update
    respond_to do |format|
      if @permition_role.update(permition_role_params)
        format.html { redirect_to @permition_role, notice: 'Permition role was successfully updated.' }
        format.json { render :show, status: :ok, location: @permition_role }
      else
        format.html { render :edit }
        format.json { render json: @permition_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /permition_roles/1
  # DELETE /permition_roles/1.json
  def destroy
    @permition_role.destroy
    respond_to do |format|
      format.html { redirect_to permition_roles_url, notice: 'Permition role was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_permition_role
      @permition_role = PermitionRole.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def permition_role_params
      params.require(:permition_role).permit(:role_id, :permition_id, :parameter)
    end
end
