class OutfitsController < ApplicationController
  before_action :set_outfit, only: [:show, :edit, :update, :destroy]

  # GET /outfits
  # GET /outfits.json
  def index
    @outfits = Outfit.all
  end

  # GET /outfits/1
  # GET /outfits/1.json
  def show
    @outfits = Outfit.find_by_sql(SELECT top.image, pant.image, shoe.image FROM top, pant, shoe WHERE top.id=outfit.top_id AND pant.id=outfit.pant_id AND shoe.id=outfit.shoe_id)
    # Outfit.find(:all, :joins => :tops,
    #             :select => "outfits.*, count(user_points.id)", :group =>
    #             "user_points.user_id")
    end
    # find_by(id: params[:id])
  end

  # GET /outfits/new
  def new
    @outfits = Outfit.new
  end

  # GET /outfits/1/edit
  def edit
  end

  # POST /outfits
  # POST /outfits.json
  def create
    # @outfit = Outfit.new(outfit_params)

    # respond_to do |format|
    #   if @outfit.save
    #     format.html { redirect_to @outfit, notice: 'Outfit was successfully created.' }
    #     format.json { render :show, status: :created, location: @outfit }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @outfit.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # PATCH/PUT /outfits/1
  # PATCH/PUT /outfits/1.json
  def update
    # respond_to do |format|
    #   if @outfit.update(outfit_params)
    #     format.html { redirect_to @outfit, notice: 'Outfit was successfully updated.' }
    #     format.json { render :show, status: :ok, location: @outfit }
    #   else
    #     format.html { render :edit }
    #     format.json { render json: @outfit.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # DELETE /outfits/1
  # DELETE /outfits/1.json
  def destroy
    # @outfit.destroy
    # respond_to do |format|
    #   format.html { redirect_to outfits_url, notice: 'Outfit was successfully destroyed.' }
    #   format.json { head :no_content }
    # end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_outfit
      @outfit = Outfit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def outfit_params
      params[:outfit]
    end
end
