class PromoChannelsController < ApplicationController
  before_action :set_promo_channel, only: [:show, :edit, :update, :destroy]

  # GET /promo_channels
  # GET /promo_channels.json
  def index
    @promo_channels = PromoChannel.all
  end

  # GET /promo_channels/1
  # GET /promo_channels/1.json
  def show
  end

  # GET /promo_channels/new
  def new
    @promo_channel = PromoChannel.new
  end

  # GET /promo_channels/1/edit
  def edit
  end

  # POST /promo_channels
  # POST /promo_channels.json
  def create
    @promo_channel = PromoChannel.new(promo_channel_params)

    respond_to do |format|
      if @promo_channel.save
        format.html { redirect_to @promo_channel, notice: 'Promo channel was successfully created.' }
        format.json { render :show, status: :created, location: @promo_channel }
      else
        format.html { render :new }
        format.json { render json: @promo_channel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /promo_channels/1
  # PATCH/PUT /promo_channels/1.json
  def update
    respond_to do |format|
      if @promo_channel.update(promo_channel_params)
        format.html { redirect_to @promo_channel, notice: 'Promo channel was successfully updated.' }
        format.json { render :show, status: :ok, location: @promo_channel }
      else
        format.html { render :edit }
        format.json { render json: @promo_channel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /promo_channels/1
  # DELETE /promo_channels/1.json
  def destroy
    @promo_channel.destroy
    respond_to do |format|
      format.html { redirect_to promo_channels_url, notice: 'Promo channel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_promo_channel
      @promo_channel = PromoChannel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def promo_channel_params
      params.require(:promo_channel).permit(:name)
    end
end
