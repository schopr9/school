class AdminformsController < ApplicationController
  before_action :set_adminform, only: [:show, :edit, :update, :destroy]

  # GET /adminforms
  # GET /adminforms.json
  def index
    @adminforms = Adminform.all
  end

  # GET /adminforms/1
  # GET /adminforms/1.json
  def show
  end

  # GET /adminforms/new
  def new
    @adminform = Adminform.new
  end

  # GET /adminforms/1/edit
  def edit
  end

  # POST /adminforms
  # POST /adminforms.json
  def create
    @adminform = Adminform.new(adminform_params)

    respond_to do |format|
      if @adminform.save
        format.html { redirect_to @adminform, notice: 'Adminform was successfully created.' }
        format.json { render :show, status: :created, location: @adminform }
      else
        format.html { render :new }
        format.json { render json: @adminform.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /adminforms/1
  # PATCH/PUT /adminforms/1.json
  def update
    respond_to do |format|
      if @adminform.update(adminform_params)
        format.html { redirect_to @adminform, notice: 'Adminform was successfully updated.' }
        format.json { render :show, status: :ok, location: @adminform }
      else
        format.html { render :edit }
        format.json { render json: @adminform.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /adminforms/1
  # DELETE /adminforms/1.json
  def destroy
    @adminform.destroy
    respond_to do |format|
      format.html { redirect_to adminforms_url, notice: 'Adminform was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_adminform
      @adminform = Adminform.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def adminform_params
      params.require(:adminform).permit(:Name_of_student, :Gender, :Class, :Date_of_birth, :Category, :Nationality, :Father_name, :Mother_name, :Address_line_1, :Address_line2, :City, :State, :Pin_code, :Email, :Phone, :Father_occupation, :Highest_degree_1, :Annual_income_1, :Mother_occupation, :Highest_degree_2, :Annual_income_2)
    end
end
