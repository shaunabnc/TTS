class IceandfiresController < ApplicationController
  before_action :set_iceandfire, only: [:show, :edit, :update, :destroy]

  # GET /iceandfires
  # GET /iceandfires.json
  def index
    @iceandfires = Iceandfire.all
  end

  # GET /iceandfires/1
  # GET /iceandfires/1.json
  def show
  end

  # GET /iceandfires/new
  def new
    @iceandfire = Iceandfire.new
  end

  # GET /iceandfires/1/edit
  def edit
  end

  # POST /iceandfires
  # POST /iceandfires.json
  def create
    @iceandfire = Iceandfire.new(iceandfire_params)

    respond_to do |format|
      if @iceandfire.save
        format.html { redirect_to @iceandfire, notice: 'Reading List was successfully created.' }
        format.json { render :show, status: :created, location: @iceandfire }
      else
        format.html { render :new }
        format.json { render json: @iceandfire.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /iceandfires/1
  # PATCH/PUT /iceandfires/1.json
  def update
    respond_to do |format|
      if @iceandfire.update(iceandfire_params)
        format.html { redirect_to @iceandfire, notice: 'Readling List was successfully updated.' }
        format.json { render :show, status: :ok, location: @iceandfire }
      else
        format.html { render :edit }
        format.json { render json: @iceandfire.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /iceandfires/1
  # DELETE /iceandfires/1.json
  def destroy
    @iceandfire.destroy
    respond_to do |format|
      format.html { redirect_to iceandfires_url, notice: 'Readling List was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_iceandfire
      @iceandfire = Iceandfire.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def iceandfire_params
      params.require(:iceandfire).permit(:title, :book, :purchased, :pages, :current, :page, :finish)
    end
end
