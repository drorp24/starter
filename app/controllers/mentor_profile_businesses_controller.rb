class MentorProfileBusinessesController < ApplicationController
  before_action :set_mentor_profile_business, only: [:show, :edit, :update, :destroy]

  # GET /mentor_profile_businesses
  # GET /mentor_profile_businesses.json
  def index
    @mentor_profile_businesses = MentorProfileBusiness.all
  end

  # GET /mentor_profile_businesses/1
  # GET /mentor_profile_businesses/1.json
  def show
  end

  # GET /mentor_profile_businesses/new
  def new
    @mentor_profile_business = MentorProfileBusiness.new
  end

  # GET /mentor_profile_businesses/1/edit
  def edit
  end

  # POST /mentor_profile_businesses
  # POST /mentor_profile_businesses.json
  def create
    @mentor_profile_business = MentorProfileBusiness.new(mentor_profile_business_params)

    respond_to do |format|
      if @mentor_profile_business.save
        format.html { redirect_to @mentor_profile_business, notice: 'Mentor profile business was successfully created.' }
        format.json { render :show, status: :created, location: @mentor_profile_business }
      else
        format.html { render :new }
        format.json { render json: @mentor_profile_business.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mentor_profile_businesses/1
  # PATCH/PUT /mentor_profile_businesses/1.json
  def update
    respond_to do |format|
      if @mentor_profile_business.update(mentor_profile_business_params)
        format.html { redirect_to @mentor_profile_business, notice: 'Mentor profile business was successfully updated.' }
        format.json { render :show, status: :ok, location: @mentor_profile_business }
      else
        format.html { render :edit }
        format.json { render json: @mentor_profile_business.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mentor_profile_businesses/1
  # DELETE /mentor_profile_businesses/1.json
  def destroy
    @mentor_profile_business.destroy
    respond_to do |format|
      format.html { redirect_to mentor_profile_businesses_url, notice: 'Mentor profile business was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mentor_profile_business
      @mentor_profile_business = MentorProfileBusiness.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mentor_profile_business_params
      params.require(:mentor_profile_business).permit(:title)
    end
end
