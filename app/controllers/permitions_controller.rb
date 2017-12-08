class PermitionsController < ApplicationController
  before_action :set_permition, only: [:show, :edit, :update, :destroy]

  # GET /permitions
  # GET /permitions.json
  def index
    @permitions = Permition.all
  end

  # GET /permitions/1
  # GET /permitions/1.json
  def show
  end

  # GET /permitions/new
  def new
    @permition = Permition.new
  end

  # GET /permitions/1/edit
  def edit
  end

  # POST /permitions
  # POST /permitions.json
  def create
    @permition = Permition.new(permition_params)

    respond_to do |format|
      if @permition.save
        format.html { redirect_to @permition, notice: 'Permition was successfully created.' }
        format.json { render :show, status: :created, location: @permition }
      else
        format.html { render :new }
        format.json { render json: @permition.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /permitions/1
  # PATCH/PUT /permitions/1.json
  def update
    respond_to do |format|
      if @permition.update(permition_params)
        format.html { redirect_to @permition, notice: 'Permition was successfully updated.' }
        format.json { render :show, status: :ok, location: @permition }
      else
        format.html { render :edit }
        format.json { render json: @permition.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /permitions/1
  # DELETE /permitions/1.json
  def destroy
    @permition.destroy
    respond_to do |format|
      format.html { redirect_to permitions_url, notice: 'Permition was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_permition
      @permition = Permition.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def permition_params
      params.require(:permition).permit(:act, :information_system_id, :parameter)
    end
end
