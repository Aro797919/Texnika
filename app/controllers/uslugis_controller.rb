class UslugisController < ApplicationController
  before_action :set_uslugi, only: %i[ show edit update destroy ]
  before_action :authenticate_user!

  # GET /uslugis or /uslugis.json
  def index
    @uslugis = Uslugi.all
  end

  # GET /uslugis/1 or /uslugis/1.json
  def show
  end

  # GET /uslugis/new
  def new
    @uslugi = Uslugi.new
  end

  # GET /uslugis/1/edit
  def edit
  end

  # POST /uslugis or /uslugis.json
  def create
    @uslugi = Uslugi.new(uslugi_params)

    respond_to do |format|
      if @uslugi.save
        format.html { redirect_to uslugi_url(@uslugi), notice: "Uslugi was successfully created." }
        format.json { render :show, status: :created, location: @uslugi }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @uslugi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /uslugis/1 or /uslugis/1.json
  def update
    respond_to do |format|
      if @uslugi.update(uslugi_params)
        format.html { redirect_to uslugi_url(@uslugi), notice: "Uslugi was successfully updated." }
        format.json { render :show, status: :ok, location: @uslugi }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @uslugi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /uslugis/1 or /uslugis/1.json
  def destroy
    @uslugi.destroy

    respond_to do |format|
      format.html { redirect_to uslugis_url, notice: "Uslugi was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_uslugi
      @uslugi = Uslugi.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def uslugi_params
      params.require(:uslugi).permit(:title, :description, :image_url)
    end
end
