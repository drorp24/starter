class MentorProfileAcademicsController < ApplicationController
  before_action :set_mentor_profile_academic, only: [:show, :edit, :update, :destroy]

  # GET /mentor_profile_academics
  # GET /mentor_profile_academics.json
  def index
    @mentor_profile_academics = MentorProfileAcademic.all
  end

  # GET /mentor_profile_academics/1
  # GET /mentor_profile_academics/1.json
  def show
  end

  # GET /mentor_profile_academics/new
  def new
    @mentor_profile_academic = MentorProfileAcademic.new
  end

  # GET /mentor_profile_academics/1/edit
  def edit
  end

  # POST /mentor_profile_academics
  # POST /mentor_profile_academics.json
  def create
    @mentor_profile_academic = MentorProfileAcademic.new(mentor_profile_academic_params)

    respond_to do |format|
      if @mentor_profile_academic.save
        format.html { redirect_to @mentor_profile_academic, notice: 'Mentor profile academic was successfully created.' }
        format.json { render :show, status: :created, location: @mentor_profile_academic }
      else
        format.html { render :new }
        format.json { render json: @mentor_profile_academic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mentor_profile_academics/1
  # PATCH/PUT /mentor_profile_academics/1.json
  def update
    respond_to do |format|
      if @mentor_profile_academic.update(mentor_profile_academic_params)
        format.html { redirect_to @mentor_profile_academic, notice: 'Mentor profile academic was successfully updated.' }
        format.json { render :show, status: :ok, location: @mentor_profile_academic }
      else
        format.html { render :edit }
        format.json { render json: @mentor_profile_academic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mentor_profile_academics/1
  # DELETE /mentor_profile_academics/1.json
  def destroy
    @mentor_profile_academic.destroy
    respond_to do |format|
      format.html { redirect_to mentor_profile_academics_url, notice: 'Mentor profile academic was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mentor_profile_academic
      @mentor_profile_academic = MentorProfileAcademic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mentor_profile_academic_params
      params.require(:mentor_profile_academic).permit(:title)
    end
end
