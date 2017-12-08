class RightGroupPermitionsController < ApplicationController
  before_action :set_right_group_permition, only: [:show, :edit, :update, :destroy]

  # GET /right_group_permitions
  # GET /right_group_permitions.json
  def index
    @right_group_permitions = RightGroupPermition.all
  end

  # GET /right_group_permitions/1
  # GET /right_group_permitions/1.json
  def show
  end

  # GET /right_group_permitions/new
  def new
    @right_group_permition = RightGroupPermition.new
  end

  # GET /right_group_permitions/1/edit
  def edit
  end

  # POST /right_group_permitions
  # POST /right_group_permitions.json
  def create
    @right_group_permition = RightGroupPermition.new(right_group_permition_params)

    respond_to do |format|
      if @right_group_permition.save
        format.html { redirect_to @right_group_permition, notice: 'Right group permition was successfully created.' }
        format.json { render :show, status: :created, location: @right_group_permition }
      else
        format.html { render :new }
        format.json { render json: @right_group_permition.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /right_group_permitions/1
  # PATCH/PUT /right_group_permitions/1.json
  def update
    respond_to do |format|
      if @right_group_permition.update(right_group_permition_params)
        format.html { redirect_to @right_group_permition, notice: 'Right group permition was successfully updated.' }
        format.json { render :show, status: :ok, location: @right_group_permition }
      else
        format.html { render :edit }
        format.json { render json: @right_group_permition.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /right_group_permitions/1
  # DELETE /right_group_permitions/1.json
  def destroy
    @right_group_permition.destroy
    respond_to do |format|
      format.html { redirect_to right_group_permitions_url, notice: 'Right group permition was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_right_group_permition
      @right_group_permition = RightGroupPermition.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def right_group_permition_params
      params.require(:right_group_permition).permit(:permition_id, :group_right_id, :parameter)
    end
end
