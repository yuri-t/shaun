class FavoriteSitesController < ApplicationController
  before_action :set_favorite_site, only: [:show, :edit, :update, :destroy]

  # GET /favorite_sites
  # GET /favorite_sites.json
  def index
    @favorite_sites = FavoriteSite.all
    @favorite_form = FavoriteSite::SearchForm.new
  end

  # GET /favorite_sites/1
  # GET /favorite_sites/1.json
  def show
  end

  # GET /favorite_sites/new
  def new
    @favorite_sites = FavoriteSite.new
  end

  # GET /favorite_sites/1/edit
  def edit
  end

  # POST /favorite_sites
  # POST /favorite_sites.json
  def create
    @favorite_site = FavoriteSite.new(favorite_site_params)

    respond_to do |format|
      if @favorite_site.save
        format.html { redirect_to @favorite_site, notice: 'Favorite site was successfully created.' }
        format.json { render :show, status: :created, location: @favorite_site }
      else
        format.html { render :new }
        format.json { render json: @favorite_site.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /favorite_sites/1
  # PATCH/PUT /favorite_sites/1.json
  def update
    respond_to do |format|
      if @favorite_site.update(favorite_site_params)
        format.html { redirect_to @favorite_site, notice: 'Favorite site was successfully updated.' }
        format.json { render :show, status: :ok, location: @favorite_site }
      else
        format.html { render :edit }
        format.json { render json: @favorite_site.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /favorite_sites/1
  # DELETE /favorite_sites/1.json
  def destroy
    @favorite_site.destroy
    respond_to do |format|
      format.html { redirect_to favorite_sites_url, notice: 'Favorite site was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_favorite_site
      @favorite_site = FavoriteSite.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def favorite_site_params
      params[:favorite_site]
    end
end
