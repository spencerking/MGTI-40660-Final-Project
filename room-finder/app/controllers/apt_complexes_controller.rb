class AptComplexesController < ApplicationController
  before_action :set_apt_complex, only: [:show, :edit, :update, :destroy]

  # GET /apt_complexes
  # GET /apt_complexes.json
  def index
    @apt_complexes = AptComplex.all
  end

  # GET /apt_complexes/1
  # GET /apt_complexes/1.json
  def show
  end

  # GET /apt_complexes/new
  def new
    @apt_complex = AptComplex.new
  end

  # GET /apt_complexes/1/edit
  def edit
  end

  # POST /apt_complexes
  # POST /apt_complexes.json
  def create
    @apt_complex = AptComplex.new(apt_complex_params)

    respond_to do |format|
      if @apt_complex.save
        format.html { redirect_to @apt_complex, notice: 'Apt complex was successfully created.' }
        format.json { render :show, status: :created, location: @apt_complex }
      else
        format.html { render :new }
        format.json { render json: @apt_complex.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /apt_complexes/1
  # PATCH/PUT /apt_complexes/1.json
  def update
    respond_to do |format|
      if @apt_complex.update(apt_complex_params)
        format.html { redirect_to @apt_complex, notice: 'Apt complex was successfully updated.' }
        format.json { render :show, status: :ok, location: @apt_complex }
      else
        format.html { render :edit }
        format.json { render json: @apt_complex.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /apt_complexes/1
  # DELETE /apt_complexes/1.json
  def destroy
    @apt_complex.destroy
    respond_to do |format|
      format.html { redirect_to apt_complexes_url, notice: 'Apt complex was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_apt_complex
      @apt_complex = AptComplex.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def apt_complex_params
      params.require(:apt_complex).permit(:name, :street, :description, :floors, :City_id, :Company_id)
    end
end
