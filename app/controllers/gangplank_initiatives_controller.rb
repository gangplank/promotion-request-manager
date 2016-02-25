class GangplankInitiativesController < ApplicationController
  before_action :set_gangplank_initiative, only: [:show, :edit, :update, :destroy]

  # GET /gangplank_initiatives
  # GET /gangplank_initiatives.json
  def index
    @gangplank_initiatives = GangplankInitiative.all
  end

  # GET /gangplank_initiatives/1
  # GET /gangplank_initiatives/1.json
  def show
  end

  # GET /gangplank_initiatives/new
  def new
    @gangplank_initiative = GangplankInitiative.new
  end

  # GET /gangplank_initiatives/1/edit
  def edit
  end

  # POST /gangplank_initiatives
  # POST /gangplank_initiatives.json
  def create
    @gangplank_initiative = GangplankInitiative.new(gangplank_initiative_params)

    respond_to do |format|
      if @gangplank_initiative.save
        format.html { redirect_to @gangplank_initiative, notice: 'Gangplank initiative was successfully created.' }
        format.json { render :show, status: :created, location: @gangplank_initiative }
      else
        format.html { render :new }
        format.json { render json: @gangplank_initiative.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gangplank_initiatives/1
  # PATCH/PUT /gangplank_initiatives/1.json
  def update
    respond_to do |format|
      if @gangplank_initiative.update(gangplank_initiative_params)
        format.html { redirect_to @gangplank_initiative, notice: 'Gangplank initiative was successfully updated.' }
        format.json { render :show, status: :ok, location: @gangplank_initiative }
      else
        format.html { render :edit }
        format.json { render json: @gangplank_initiative.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gangplank_initiatives/1
  # DELETE /gangplank_initiatives/1.json
  def destroy
    @gangplank_initiative.destroy
    respond_to do |format|
      format.html { redirect_to gangplank_initiatives_url, notice: 'Gangplank initiative was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gangplank_initiative
      @gangplank_initiative = GangplankInitiative.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gangplank_initiative_params
      params.require(:gangplank_initiative).permit(:name)
    end
end
