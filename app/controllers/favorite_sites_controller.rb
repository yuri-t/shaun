class FavoriteSitesController < ApplicationController
  before_action :set_favorite_site, only: [:show, :edit, :update, :destroy]

  # GET /favorite_sites
  # GET /favorite_sites.json
  def index
    @favorite_sites = FavoriteSite.page(params[:page])
    @favorite_form = FavoriteSite::SearchForm.new
  end

  # GET /favorite_sites/1
  # GET /favorite_sites/1.json
  def show
  end

  # GET /favorite_sites/new
  def new
    @favorite_site = FavoriteSite.new
    @favorite_edit_form = FavoriteSite::EditForm.new
    # @favorite_edit_form = FavoriteSite::EditForm.new
  end

  # GET /favorite_sites/1/edit
  def edit
    @favorite_edit_form = FavoriteSite::EditForm.new
    @favorite_edit_form.favorite_site = FavoriteSite.find(params[:id])
  end

  # POST /favorite_sites
  # POST /favorite_sites.json
  def create
    @favorite_edit_form = FavoriteSite::EditForm.new(favorite_site_params)
    @favorite_form = FavoriteSite::SearchForm.new

    respond_to do |format|
      if @favorite_edit_form.save
        format.html { redirect_to favorite_sites_path }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /favorite_sites/1
  # PATCH/PUT /favorite_sites/1.json
  def update
    @favorite_edit_form = FavoriteSite::EditForm.new(favorite_site_params)
    @favorite_edit_form.id = params[:id]
    respond_to do |format|
      if @favorite_edit_form.save
        @favorite_form = FavoriteSite::SearchForm.new
        format.html { redirect_to favorite_sites_path, notice: '更新しました'}
      else
        format.html { render :edit }
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

  def search
    @favorite_form = FavoriteSite::SearchForm.new(params[:favorite_site_search_form])
    @favorite_sites = @favorite_form.search.page(params[:page])

    render 'index'
    # render 'index', :formats => [:json], :handlers => [:jbuilder]
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_favorite_site
      @favorite_site = FavoriteSite.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def favorite_site_params
      # params[:favorite_site]
      params.require(:favorite_site_edit_form).permit(:admin_user, :url, :rate)
    end
end
