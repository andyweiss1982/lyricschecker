class BillboardDatesController < ApplicationController
  before_action :set_billboard_date, only: [:show, :edit, :update, :destroy]

  # GET /billboard_dates
  # GET /billboard_dates.json
  def index
    @billboard_dates = BillboardDate.paginate(:page => params[:page])
  end

  # GET /billboard_dates/1
  # GET /billboard_dates/1.json
  def show
  end

  # GET /billboard_dates/new
  def new
    @billboard_date = BillboardDate.new
  end

  # GET /billboard_dates/1/edit
  def edit
  end

  # POST /billboard_dates
  # POST /billboard_dates.json
  def create
    @billboard_date = BillboardDate.new(billboard_date_params)

    respond_to do |format|
      if @billboard_date.save
        format.html { redirect_to @billboard_date, notice: 'Billboard date was successfully created.' }
        format.json { render :show, status: :created, location: @billboard_date }
      else
        format.html { render :new }
        format.json { render json: @billboard_date.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /billboard_dates/1
  # PATCH/PUT /billboard_dates/1.json
  def update
    respond_to do |format|
      if @billboard_date.update(billboard_date_params)
        format.html { redirect_to @billboard_date, notice: 'Billboard date was successfully updated.' }
        format.json { render :show, status: :ok, location: @billboard_date }
      else
        format.html { render :edit }
        format.json { render json: @billboard_date.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /billboard_dates/1
  # DELETE /billboard_dates/1.json
  def destroy
    @billboard_date.destroy
    respond_to do |format|
      format.html { redirect_to billboard_dates_url, notice: 'Billboard date was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_billboard_date
      @billboard_date = BillboardDate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def billboard_date_params
      params.require(:billboard_date).permit(:day)
    end
end
