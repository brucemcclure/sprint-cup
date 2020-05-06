
class FinesController < ApplicationController
    before_action :authorize_request
    before_action :find_fine, except: %i[create index]
  
    # GET /fines
    def index
      @fines = Fine.all
      render json: @fines, status: :ok
    end
  
    # GET /fines/:id
    def show
      render json: @fine, status: :ok
    end
  
    # POST /fines
    def create
      @fine = Fine.new(fine_params)
      if @fine.save
        render json: @fine, status: :created
      else
        render json: { errors: @fine.errors.full_messages },
               status: :unprocessable_entity
      end
    end
    
    # PUT /fines/:id
    def update
      unless @fine.update(fine_params)
        render json: { errors: @fine.errors.full_messages },
               status: :unprocessable_entity
      end
    end
  
    # DELETE /fines/:id
    def destroy
      @fine.destroy
    end
  
    private

    def find_fine
      @fine = Fine.find_by_id!(params[:id])
      rescue ActiveRecord::RecordNotFound
        render json: { errors: 'Fine not found' }, status: :not_found
    end
  
    def fine_params
      params.permit(
        :title, :description, :amount, :category_id, :sort
      )
    end
  end
