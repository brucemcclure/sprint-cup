
class SprintsController < ApplicationController
    before_action :authorize_request
    before_action :find_sprint, except: %i[create index]
  
    # GET /sprints
    def index
      @sprints = Sprint.all
      render json: @sprints, status: :ok
    end
  
    # GET /sprints/:id
    def show
      render json: @sprint, status: :ok
    end
  
    # POST /sprints
    def create
      @sprint = Sprint.new(sprint_params)
      if @sprint.save
        render json: @sprint, status: :created
      else
        render json: { errors: @sprint.errors.full_messages },
               status: :unprocessable_entity
      end
    end
    
    # PUT /sprints/:id
    def update
      unless @sprint.update(sprint_params)
        render json: { errors: @sprint.errors.full_messages },
               status: :unprocessable_entity
      end
    end
  
    # DELETE /sprints/:id
    def destroy
      @sprint.destroy
    end
  
    private

    def find_sprint
      @sprint = Sprint.find_by_id!(params[:id])
      rescue ActiveRecord::RecordNotFound
        render json: { errors: 'Sprint not found' }, status: :not_found
    end
  
    def sprint_params
      params.permit(
        :title, :deadline, :meeting_point, :league_id
        )
    end

  end
