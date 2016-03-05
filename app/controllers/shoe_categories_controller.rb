class ShoeCategoriesController < ApplicationController
  before_action :set_shoe_category, only: [:show, :edit, :update, :destroy]

  # GET /shoe_categories
  # GET /shoe_categories.json
  def index
    @shoe_categories = ShoeCategory.all
  end

  # GET /shoe_categories/1
  # GET /shoe_categories/1.json
  def show
  end

  # GET /shoe_categories/new
  def new
    @shoe_category = ShoeCategory.new
  end

  # GET /shoe_categories/1/edit
  def edit
  end

  # POST /shoe_categories
  # POST /shoe_categories.json
  def create
    @shoe_category = ShoeCategory.new(shoe_category_params)

    respond_to do |format|
      if @shoe_category.save
        format.html { redirect_to @shoe_category, notice: 'Shoe category was successfully created.' }
        format.json { render :show, status: :created, location: @shoe_category }
      else
        format.html { render :new }
        format.json { render json: @shoe_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shoe_categories/1
  # PATCH/PUT /shoe_categories/1.json
  def update
    respond_to do |format|
      if @shoe_category.update(shoe_category_params)
        format.html { redirect_to @shoe_category, notice: 'Shoe category was successfully updated.' }
        format.json { render :show, status: :ok, location: @shoe_category }
      else
        format.html { render :edit }
        format.json { render json: @shoe_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shoe_categories/1
  # DELETE /shoe_categories/1.json
  def destroy
    @shoe_category.destroy
    respond_to do |format|
      format.html { redirect_to shoe_categories_url, notice: 'Shoe category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shoe_category
      @shoe_category = ShoeCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shoe_category_params
      params.require(:shoe_category).permit(:name, :description)
    end
end
