class BranchTreesController < ApplicationController
  before_action :set_branch_tree, only: [:show, :edit, :update, :destroy]

  # GET /branch_trees
  # GET /branch_trees.json
  def index
    @branch_trees = BranchTree.all
  end

  # GET /branch_trees/1
  # GET /branch_trees/1.json
  def show
  end

  # GET /branch_trees/new
  def new
    @branch_tree = BranchTree.new
  end

  # GET /branch_trees/1/edit
  def edit
  end

  # POST /branch_trees
  # POST /branch_trees.json
  def create
    @branch_tree = BranchTree.new(branch_tree_params)

    respond_to do |format|
      if @branch_tree.save
        format.html { redirect_to @branch_tree, notice: 'Branch tree was successfully created.' }
        format.json { render :show, status: :created, location: @branch_tree }
      else
        format.html { render :new }
        format.json { render json: @branch_tree.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /branch_trees/1
  # PATCH/PUT /branch_trees/1.json
  def update
    respond_to do |format|
      if @branch_tree.update(branch_tree_params)
        format.html { redirect_to @branch_tree, notice: 'Branch tree was successfully updated.' }
        format.json { render :show, status: :ok, location: @branch_tree }
      else
        format.html { render :edit }
        format.json { render json: @branch_tree.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /branch_trees/1
  # DELETE /branch_trees/1.json
  def destroy
    @branch_tree.destroy
    respond_to do |format|
      format.html { redirect_to branch_trees_url, notice: 'Branch tree was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_branch_tree
      @branch_tree = BranchTree.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def branch_tree_params
      params.require(:branch_tree).permit(:full_name, :name, :digital_name, :address, :branch_tree_id, :level)
    end
end
