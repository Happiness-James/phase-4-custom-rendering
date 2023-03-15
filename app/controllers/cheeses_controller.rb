class CheesesController < ApplicationController

  # GET /cheeses
  def index
    cheeses = Cheese.all
    render json: cheeses, except: [:created_at, :updated_at], methods: [:summary]
  end

  # GET /cheeses/:id
  def show
    if
    cheese = Cheese.find_by(id: params[:id])
    render json: cheese
    else
      render json: {error: "cheese not found"}, status: 404
    end
  end

end
