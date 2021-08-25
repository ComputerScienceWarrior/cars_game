class CarsController < ApplicationController
    before_action :find_car, only: [:show, :edit, :update, :destroy]

    def index
        @cars = Car.all
    end

    def show
    end

    def new 
        @car = Car.new
    end

    def create
        @car = Car.new(car_params)
        if @car.save
            redirect_to
        else
            render :new
        end
    end

    def edit
    end

    def update
        if @car.update(car_params)
            redirect_to car_path(@car)
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
        @car = Car.find(params[:id])
    end

    def car_params
        params.require(:car).permit(:name, :level, :attack, :durability, :speed, :wins, :losses, :rank, :exp_points, :team_id)
    end
end
