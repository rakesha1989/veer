class VeereshesController < ApplicationController
  before_action :set_veeresh, only: [:show, :edit, :update, :destroy]

  # GET /veereshes
  # GET /veereshes.json
  def index
    @veereshes = Veeresh.all
  end

  # GET /veereshes/1
  # GET /veereshes/1.json
  def show
  end

  # GET /veereshes/new
  def new
    @veeresh = Veeresh.new
  end

  # GET /veereshes/1/edit
  def edit
  end

  # POST /veereshes
  # POST /veereshes.json
  def create
    @veeresh = Veeresh.new(veeresh_params)

    respond_to do |format|
      if @veeresh.save
        format.html { redirect_to @veeresh, notice: 'Veeresh was successfully created.' }
        format.json { render :show, status: :created, location: @veeresh }
      else
        format.html { render :new }
        format.json { render json: @veeresh.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /veereshes/1
  # PATCH/PUT /veereshes/1.json
  def update
    respond_to do |format|
      if @veeresh.update(veeresh_params)
        format.html { redirect_to @veeresh, notice: 'Veeresh was successfully updated.' }
        format.json { render :show, status: :ok, location: @veeresh }
      else
        format.html { render :edit }
        format.json { render json: @veeresh.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /veereshes/1
  # DELETE /veereshes/1.json
  def destroy
    @veeresh.destroy
    respond_to do |format|
      format.html { redirect_to veereshes_url, notice: 'Veeresh was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_veeresh
      @veeresh = Veeresh.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def veeresh_params
      params.require(:veeresh).permit(:establishment, :image, :canteen, :proprietor, :seating_capacity, :car_parks, :number_of_tickets_online, :number_of_tickets_box, :total_amount_per_day, :screen_id, :booking_id, :feedback_id, :user_id)
    end
end
