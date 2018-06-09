class DictionaryAccessesController < ApplicationController
  before_action :set_dictionary_access, only: [:show, :edit, :update, :destroy]

  # GET /dictionary_accesses
  # GET /dictionary_accesses.json
  def index
    @dictionary_accesses = DictionaryAccess.all.page(params[:page]).per(10)
    @page = params[:page]
    @page = 1 if @page.blank?
  end

  # GET /dictionary_accesses/1
  # GET /dictionary_accesses/1.json
  def show

  end

  # GET /dictionary_accesses/new
  def new
    @dictionary_access = DictionaryAccess.new
  end

  # GET /dictionary_accesses/1/edit
  def edit
  end

  # POST /dictionary_accesses
  # POST /dictionary_accesses.json
  def create
    @dictionary_access = DictionaryAccess.new(dictionary_access_params)

    respond_to do |format|
      if @dictionary_access.save
        format.html { redirect_to @dictionary_access, notice: 'Dictionary access was successfully created.' }
        format.json { render :show, status: :created, location: @dictionary_access }
      else
        format.html { render :new }
        format.json { render json: @dictionary_access.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dictionary_accesses/1
  # PATCH/PUT /dictionary_accesses/1.json
  def update
    respond_to do |format|
      if @dictionary_access.update(dictionary_access_params)
        format.html { redirect_to @dictionary_access, notice: 'Dictionary access was successfully updated.' }
        format.json { render :show, status: :ok, location: @dictionary_access }
      else
        format.html { render :edit }
        format.json { render json: @dictionary_access.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def get_table
    dictionary = DictionaryAccess.where(access_key: params['ak1']).first
    @result = ""
    if dictionary
      if dictionary.information_system.access_key == params['ak2']
        begin
          @result = instance_eval("#{dictionary.name}.all")
        rescue
          @result = "Ошибка при составлении JSON"
        end
      else
        @result = "Не найдена информационная система с таким словарем (#{params["ak2"]})"
      end
    else
      @result = "Не найден словарь (#{params["ak1"]})"
    end
    respond_to do |format|
      format.json {render json: @result}
    end
  end
  
  
  # DELETE /dictionary_accesses/1
  # DELETE /dictionary_accesses/1.json
  def destroy
    @dictionary_access.destroy
    respond_to do |format|
      format.html { redirect_to dictionary_accesses_url, notice: 'Dictionary access was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dictionary_access
      @dictionary_access = DictionaryAccess.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dictionary_access_params
      params.require(:dictionary_access).permit(:information_system_id, :name, :access_key)
    end
end
