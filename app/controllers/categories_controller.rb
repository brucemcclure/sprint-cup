
class CategoriesController < ApplicationController
    before_action :authorize_request
    before_action :find_category, except: %i[create index]
  
    # GET /categories
    def index
      @categories = Category.all
      render json: @categories, status: :ok
    end
  
    # GET /categories/:id
    def show
      render json: @category, status: :ok
    end
  
    # POST /categories
    def create
      @category = Category.new(category_params)
      if @category.save
        render json: @category, status: :created
      else
        render json: { errors: @category.errors.full_messages },
               status: :unprocessable_entity
      end
    end
    
    # PUT /categories/:id
    def update
      unless @category.update(category_params)
        render json: { errors: @category.errors.full_messages },
               status: :unprocessable_entity
      end
    end
  
    # DELETE /categories/:id
    def destroy
      @category.destroy
    end
  
    private

    def find_category
      @category = Category.find_by_id!(params[:id])
      rescue ActiveRecord::RecordNotFound
        render json: { errors: 'Category not found' }, status: :not_found
    end
  
    def category_params
      params.permit(
        :title, :description
      )
    end
  end
