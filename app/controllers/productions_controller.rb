class ProductionsController < ApplicationController

    wrap_parameters format: []

    def index
        productions = Production.all
        render json: productions, status: :ok, except: [ :created_at, :updated_at ]
    end

    def show
        production = Production.find_by(id:params[:id])
        if production
            render json: production, status: 200
        else
            render json: { error: "Data is not found" }, status: 404
        end
    end

    def create
        production = Production.create(production_params)
        # byebug
        render json: production, status: :created
    end

    def update 
        production = Production.find_by(id:params[:id])
        if production
            production.update(production_params)
            render json: production, status: 202
        else
            render json: { Error: "production is not founded" }, status: 404
        end
    end

    def destroy
        production = Production.find_by(id: params[:id])
        if production
            production.destroy
            head 204
        else
            render json: { error: " content is not founded" }, status: 404
        end
    end

    private

    def production_params
        params.permit(:title, :genre, :budget, :image, :director, :ongoing)
    end


end
