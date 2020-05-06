
class PointsController < ApplicationController
    before_action :authorize_request
    before_action :find_point, except: %i[create index]
  
    # GET /points
    def index
      @points = Point.all
      render json: @points, status: :ok
    end
  
    # GET /points/:id
    def show
      render json: @point, status: :ok
    end
  
    # POST /points
    def create
      @point = Point.new(point_params)
      if @point.save
        render json: @point, status: :created
      else
        render json: { errors: @point.errors.full_messages },
               status: :unprocessable_entity
      end
    end
    
    # PUT /points/:id
    def update
      unless @point.update(point_params)
        render json: { errors: @point.errors.full_messages },
               status: :unprocessable_entity
      end
    end
  
    # DELETE /points/:id
    def destroy
      @point.destroy
    end
  
    private

    def find_point
      @point = Point.find_by_id!(params[:id])
      rescue ActiveRecord::RecordNotFound
        render json: { errors: 'Point not found' }, status: :not_found
    end
  
    def point_params
      params.permit(
        :points, :user_id, :sprint_id, :fine_id
        )
    end

  end
