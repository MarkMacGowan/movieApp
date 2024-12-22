class MovieFormsController < ApplicationController
  before_action :set_movie_form, only: %i[ show edit update destroy ]

  # GET /movie_forms or /movie_forms.json
  def index
    @movie_forms = MovieForm.all
  end

  # GET /movie_forms/1 or /movie_forms/1.json
  def show
  end

  # GET /movie_forms/new
  def new
    @movie_form = MovieForm.new
  end

  # GET /movie_forms/1/edit
  def edit
  end

  # POST /movie_forms or /movie_forms.json
  def create
    @movie_form = MovieForm.new(movie_form_params)

    respond_to do |format|
      if @movie_form.save
        format.html { redirect_to @movie_form, notice: "Movie form was successfully created." }
        format.json { render :show, status: :created, location: @movie_form }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @movie_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /movie_forms/1 or /movie_forms/1.json
  def update
    respond_to do |format|
      if @movie_form.update(movie_form_params)
        format.html { redirect_to @movie_form, notice: "Movie form was successfully updated." }
        format.json { render :show, status: :ok, location: @movie_form }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @movie_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /movie_forms/1 or /movie_forms/1.json
  def destroy
    @movie_form.destroy!

    respond_to do |format|
      format.html { redirect_to movie_forms_path, status: :see_other, notice: "Movie form was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movie_form
      @movie_form = MovieForm.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def movie_form_params
      params.require(:movie_form).permit(:movie_id, :title, :year, :cast, :description, :dvd, :blu_ray)
    end
end
