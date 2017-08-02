class CategoriesController < ApplicationController
  before_action :all_categories, only: [:index, :create, :update, :destroy]
  before_action :set_category, only: [:show, :edit, :update, :destroy]

  # GET /categories
  # GET /categories.json
  def index
  end

  # GET /categories/1
  # GET /categories/1.json
  def show
  end

  # GET /categories/new
  def new
    @category = Category.new
  end

  # GET /categories/1/edit
  def edit
  end

  # POST /categories
  # POST /categories.json
  def create
    @category = Category.create(category_params)
    @category.update(created_by: "bartdn183")
      if params[:documents]
        params[:documents].each { |document|
        @category.documents.create(document: document, uploaded_by: "bartdn183", category_id: @category.id)
        }
      end

  end

  def update
     @category.update(category_params)
     @category.update(edited_by: "bartdn183")
        if params[:documents]
          params[:documents].each { |document|
          @category.documents.create(document: document, uploaded_by: "bartdn183", category_id: @category.id)
          }
        end 
  end

  # DELETE /categories/1
  # DELETE /categories/1.json
  def destroy
    @category.destroy
  end

  private

    def all_categories
      @categories = Category.order(name: :asc)
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_category
      @category = Category.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def category_params
      params.require(:category).permit(:name, :created_by, :edited_by)
    end
end
