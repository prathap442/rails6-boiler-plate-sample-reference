class RecipiesController < ApplicationController
  before_action :set_recipy, only: [:show, :edit, :update, :destroy]

  # GET /recipies
  # GET /recipies.json
  def index
    @recipies = Recipie.all
  end

  # GET /recipies/1
  # GET /recipies/1.json
  def show
  end

  # GET /recipies/new
  def new
    @recipy = Recipie.new
  end

  # GET /recipies/1/edit
  def edit
  end

  # POST /recipies
  # POST /recipies.json
  def create
    @recipy = Recipie.new(recipy_params)

    respond_to do |format|
      if @recipy.save
        format.html { redirect_to @recipy, notice: 'Recipie was successfully created.' }
        format.json { render :show, status: :created, location: @recipy }
      else
        format.html { render :new }
        format.json { render json: @recipy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recipies/1
  # PATCH/PUT /recipies/1.json
  def update
    respond_to do |format|
      if @recipy.update(recipy_params)
        format.html { redirect_to @recipy, notice: 'Recipie was successfully updated.' }
        format.json { render :show, status: :ok, location: @recipy }
      else
        format.html { render :edit }
        format.json { render json: @recipy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recipies/1
  # DELETE /recipies/1.json
  def destroy
    @recipy.destroy
    respond_to do |format|
      format.html { redirect_to recipies_url, notice: 'Recipie was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipy
      @recipy = Recipie.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def recipy_params
      params.require(:recipie).permit(:title, :description, ingredients_attributes: [:id, :content, :recipie_id, :_destroy],steps_attributes: [:id, :direction, :recipie_id, :_destroy])
    end
end
