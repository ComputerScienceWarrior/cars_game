class CarsController < ApplicationController
    before_action :find_car, only: [:show, :edit, :update, :destroy]

    def index
        @team = Team.friendly.find(params[:team_id])
        @cars = @team.cars
    end

    def show
    end

    def new 
        @team = Team.friendly.find(params[:team_id])
    end

    def create
        @car = Car.new(car_params)
        if @car.save
            redirect_to team_car_path(@car.team, @car)
        else
            render :new
        end
    end

    def edit
    end

    def update
        if @car.update(car_params)
            redirect_to teams_car_path(@car)
        else
            render :edit
        end
    end

    def destroy
        if @destroy
            redirect_to teams_path
        end
    end

    private 

    def find_car
        @car = Car.friendly.find(params[:id])
    end

    def car_params
        params.require(:car).permit(:name, :level, :attack, :durability, :speed, :wins, :losses, :rank, :exp_points, :team_id)
    end
end
