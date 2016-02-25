class PromoRequestsController < ApplicationController
  before_action :set_promo_request, only: [:show, :edit, :update, :destroy]
  
  # GET /promo_requests
  # GET /promo_requests.json
  def index
    @promo_requests = PromoRequest.all
  end

  # GET /promo_requests/1
  # GET /promo_requests/1.json
  def show
    @gangplank_location = GangplankLocation.find(@promo_request.gangplank_location_id)
    @gangplank_initiative = GangplankInitiative.find(@promo_request.gangplank_initiative_id)
  end

  # GET /promo_requests/new
  def new
    @gangplank_locations = GangplankLocation.all
    @gangplank_initiatives = GangplankInitiative.all
    @promo_request = PromoRequest.new
  end

  # GET /promo_requests/1/edit
  def edit
    @gangplank_locations = GangplankLocation.all
    @gangplank_initiatives = GangplankInitiative.all
  end

  # POST /promo_requests
  # POST /promo_requests.json
  def create
    @promo_request = PromoRequest.new(promo_request_params)

    respond_to do |format|
      if @promo_request.save
        format.html { redirect_to @promo_request, notice: 'Promo request was successfully created.' }
        format.json { render :show, status: :created, location: @promo_request }
      else
        format.html { render :new }
        format.json { render json: @promo_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /promo_requests/1
  # PATCH/PUT /promo_requests/1.json
  def update
    respond_to do |format|
      if @promo_request.update(promo_request_params)
        format.html { redirect_to @promo_request, notice: 'Promo request was successfully updated.' }
        format.json { render :show, status: :ok, location: @promo_request }
      else
        format.html { render :edit }
        format.json { render json: @promo_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /promo_requests/1
  # DELETE /promo_requests/1.json
  def destroy
    @promo_request.destroy
    respond_to do |format|
      format.html { redirect_to promo_requests_url, notice: 'Promo request was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_promo_request
      @promo_request = PromoRequest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def promo_request_params
      params.require(:promo_request).permit(:event_name, :description, :start_datetime, :end_datetime, :gangplank_location_id, :promo_image_uri, :gangplank_initiative_id, :organizer_name, :organizer_email, :is_space_reserved, :event_privacy, :is_free, :registration_url, :press_release_uri, promo_channel_ids: [])
    end
end
