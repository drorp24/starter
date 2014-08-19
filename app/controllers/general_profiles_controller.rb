class GeneralProfilesController < ApplicationController
  before_action :set_general_profile, only: [:show, :edit, :update, :destroy]

  # GET /general_profiles
  # GET /general_profiles.json
  def index
    @general_profiles = GeneralProfile.all
  end

  # GET /general_profiles/1
  # GET /general_profiles/1.json
  def show
  end

  # GET /general_profiles/new
  def new
    @general_profile = GeneralProfile.new
  end

  # GET /general_profiles/1/edit
  def edit
  end

  # POST /general_profiles
  # POST /general_profiles.json
  def create
    @general_profile = GeneralProfile.new(general_profile_params)

    respond_to do |format|
      if @general_profile.save
        format.html { redirect_to @general_profile, notice: 'General profile was successfully created.' }
        format.json { render :show, status: :created, location: @general_profile }
      else
        format.html { render :new }
        format.json { render json: @general_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /general_profiles/1
  # PATCH/PUT /general_profiles/1.json
  def update
    respond_to do |format|
      if @general_profile.update(general_profile_params)
        format.html { redirect_to @general_profile, notice: 'General profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @general_profile }
      else
        format.html { render :edit }
        format.json { render json: @general_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /general_profiles/1
  # DELETE /general_profiles/1.json
  def destroy
    @general_profile.destroy
    respond_to do |format|
      format.html { redirect_to general_profiles_url, notice: 'General profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_general_profile
      @general_profile = GeneralProfile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def general_profile_params
      params.require(:general_profile).permit(:user_id, :title)
    end
end
