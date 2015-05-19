class RoomclassesController < ApplicationController
  before_action :set_roomclass, only: [:show, :edit, :update, :destroy]

  def index
    @roomclasses = Roomclass.all
  end

  # GET /roomclasses/1
  # GET /roomclasses/1.json
  def show
  end

  # GET /roomclasses/new
  def new
    @roomclass = Roomclass.new
  end

  # GET /roomclasses/1/edit
  def edit
  end

  # POST /roomclasses
  # POST /roomclasses.json
  def create
    @roomclass = Roomclass.new(roomclass_params)

    respond_to do |format|
      if @roomclass.save
        format.html { redirect_to @roomclass, notice: 'Roomclass was successfully created.' }
        format.json { render :show, status: :created, location: @roomclass }
      else
        format.html { render :new }
        format.json { render json: @roomclass.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /roomclasses/1
  # PATCH/PUT /roomclasses/1.json
  def update
    respond_to do |format|
      if @roomclass.update(roomclass_params)
        format.html { redirect_to @roomclass, notice: 'Roomclass was successfully updated.' }
        format.json { render :show, status: :ok, location: @roomclass }
      else
        format.html { render :edit }
        format.json { render json: @roomclass.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /roomclasses/1
  # DELETE /roomclasses/1.json
  def destroy
    @roomclass.destroy
    respond_to do |format|
      format.html { redirect_to roomclasses_url, notice: 'Roomclass was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_roomclass
      @roomclass = Roomclass.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def roomclass_params
      params.require(:roomclass).permit(:student, :teacher, :pet)
    end
end
