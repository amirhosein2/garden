class BaghsController < ApplicationController
  before_action :set_bagh, only: [:show, :edit, :update, :destroy]

  # GET /baghs
  # GET /baghs.json
  def index
    @baghs = Bagh.all
  end

  # GET /baghs/1
  # GET /baghs/1.json
  def show
  end

  # GET /baghs/new
  def new
    @bagh = Bagh.new
  end

  # GET /baghs/1/edit
  def edit
  end

  # POST /baghs
  # POST /baghs.json
  def create
    @bagh = Bagh.new(bagh_params)

    respond_to do |format|
      if @bagh.save
        format.html { redirect_to @bagh, notice: 'Bagh was successfully created.' }
        format.json { render :show, status: :created, location: @bagh }
      else
        format.html { render :new }
        format.json { render json: @bagh.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baghs/1
  # PATCH/PUT /baghs/1.json
  def update
    respond_to do |format|
      if @bagh.update(bagh_params)
        format.html { redirect_to @bagh, notice: 'Bagh was successfully updated.' }
        format.json { render :show, status: :ok, location: @bagh }
      else
        format.html { render :edit }
        format.json { render json: @bagh.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baghs/1
  # DELETE /baghs/1.json
  def destroy
    @bagh.destroy
    respond_to do |format|
      format.html { redirect_to baghs_url, notice: 'Bagh was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bagh
      @bagh = Bagh.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bagh_params
      params.require(:bagh).permit(:name, :address)
    end
end
