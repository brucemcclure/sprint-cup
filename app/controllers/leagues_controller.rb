
class LeaguesController < ApplicationController
    before_action :authorize_request
    before_action :find_league, except: %i[create index]
  
    # GET /leagues
    def index
      @leagues = League.all
      render json: @leagues, status: :ok
    end
  
    # GET /leagues/:id
    def show
      render json: @league, status: :ok
    end
  
    # POST /leagues
    def create
      @league = League.new(league_params)
      if @league.save
        render json: @league, status: :created
      else
        render json: { errors: @league.errors.full_messages },
               status: :unprocessable_entity
      end
    end
    
    # PUT /leagues/:id
    def update
      unless @league.update(league_params)
        render json: { errors: @league.errors.full_messages },
               status: :unprocessable_entity
      end
    end
  
    # DELETE /leagues/:id
    def destroy
      @league.destroy
    end
  
    private

    def find_league
      @league = League.find_by_id!(params[:id])
      rescue ActiveRecord::RecordNotFound
        render json: { errors: 'League not found' }, status: :not_found
    end
  
    def league_params
      params.permit(
        :title, :description, :category_id, :user_id
        )
    end

  end
