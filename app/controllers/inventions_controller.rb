class InventionsController < ApplicationController
  before_action :set_invention, only: [:show, :edit, :update, :destroy]

  # GET /inventions
  # GET /inventions.json
  def index
    @inventions = Invention.all
  end

  # GET /inventions/1
  # GET /inventions/1.json
  def show
  end

  # GET /inventions/new
  def new
    @invention = Invention.new
  end

  # GET /inventions/1/edit
  def edit
  end

  # POST /inventions
  # POST /inventions.json
  def create
    @invention = Invention.new(invention_params)

    respond_to do |format|
      if @invention.save
        format.html { redirect_to @invention, notice: 'Invention was successfully created.' }
        format.json { render action: 'show', status: :created, location: @invention }
      else
        format.html { render action: 'new' }
        format.json { render json: @invention.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inventions/1
  # PATCH/PUT /inventions/1.json
  def update
    respond_to do |format|
      if @invention.update(invention_params)
        format.html { redirect_to @invention, notice: 'Invention was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @invention.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inventions/1
  # DELETE /inventions/1.json
  def destroy
    @invention.destroy
    respond_to do |format|
      format.html { redirect_to inventions_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_invention
      @invention = Invention.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def invention_params
      params.require(:invention).permit(:blueprint, :prefered_decryptor)
    end
end
