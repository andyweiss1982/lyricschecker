class YearObjsController < ApplicationController
  before_action :set_year_obj, only: [:show, :edit, :update, :destroy]

  # GET /year_objs
  # GET /year_objs.json
  def index
    @year_objs = YearObj.all
  end

  def graph
    @year_objs = YearObj.all
  end

  # GET /year_objs/1
  # GET /year_objs/1.json
  def show
  end

  # GET /year_objs/new
  def new
    @year_obj = YearObj.new
  end

  # GET /year_objs/1/edit
  def edit
  end

  # POST /year_objs
  # POST /year_objs.json
  def create
    @year_obj = YearObj.new(year_obj_params)

    respond_to do |format|
      if @year_obj.save
        format.html { redirect_to @year_obj, notice: 'Year obj was successfully created.' }
        format.json { render :show, status: :created, location: @year_obj }
      else
        format.html { render :new }
        format.json { render json: @year_obj.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /year_objs/1
  # PATCH/PUT /year_objs/1.json
  def update
    respond_to do |format|
      if @year_obj.update(year_obj_params)
        format.html { redirect_to @year_obj, notice: 'Year obj was successfully updated.' }
        format.json { render :show, status: :ok, location: @year_obj }
      else
        format.html { render :edit }
        format.json { render json: @year_obj.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /year_objs/1
  # DELETE /year_objs/1.json
  def destroy
    @year_obj.destroy
    respond_to do |format|
      format.html { redirect_to year_objs_url, notice: 'Year obj was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_year_obj
      @year_obj = YearObj.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def year_obj_params
      params.require(:year_obj).permit(:num)
    end
end
