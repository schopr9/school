class DatesheetsController < ApplicationController
  before_action :set_datesheet, only: [:show, :edit, :update, :destroy]

  # GET /datesheets
  # GET /datesheets.json
  def index
    @datesheets = Datesheet.all
  end

  # GET /datesheets/1
  # GET /datesheets/1.json
  def show
  end

  def datesheet_filter
    @class_name = params[:q]
    @datesheet = Datesheet.where(class_name: params[:q], exam_name: params[:y])
      
    render datesheet_filter_path
  end  

  # GET /datesheets/new
  def new
    @datesheet = Datesheet.new
  end

  # GET /datesheets/1/edit
  def edit
  end

  # POST /datesheets
  # POST /datesheets.json
  def create
    @datesheet = Datesheet.new(datesheet_params)

    respond_to do |format|
      if @datesheet.save
        format.html { redirect_to @datesheet, notice: 'Datesheet was successfully created.' }
        format.json { render :show, status: :created, location: @datesheet }
      else
        format.html { render :new }
        format.json { render json: @datesheet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /datesheets/1
  # PATCH/PUT /datesheets/1.json
  def update
    respond_to do |format|
      if @datesheet.update(datesheet_params)
        format.html { redirect_to @datesheet, notice: 'Datesheet was successfully updated.' }
        format.json { render :show, status: :ok, location: @datesheet }
      else
        format.html { render :edit }
        format.json { render json: @datesheet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /datesheets/1
  # DELETE /datesheets/1.json
  def destroy
    @datesheet.destroy
    respond_to do |format|
      format.html { redirect_to datesheets_url, notice: 'Datesheet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_datesheet
      @datesheet = Datesheet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def datesheet_params
      params.require(:datesheet).permit(:class_name, :exam, :exam_name,:exam_date)
    end
end
