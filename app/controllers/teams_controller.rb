class TeamsController < ApplicationController

    before_action :find_team, only: [:show, :edit, :update, :destroy]

    def index 
        @team = Team.all
    end

    def show
        if @team
            redirect_to team_path(@team)
        else
            render :index
        end
    end

    def new
        @team = Team.new
    end

    def create
        @team = Team.new(team_params)
        if @team.save
            redirect_to team_path(@team)
        else
            render :new
        end
    end

    def edit
        if @team
            redirect_to edit_team_path(@team)
        else
            render :edit
        end
    end

    def update
        if @team.update(team_params)
            redirect_to team_path(@team)
        else
            render :edit
        end
    end

    def destroy
        if @team.destroy
            redirect_to teams_path
        end
    end

    private

    def team_params
        params.require(:team).permit(:name, :total_wins, :total_losses, :rank, cars_attributes: [:name, :level, :attack, :durability, :speed, :wins, :losses, :rank, :exp_points, :team_id])
    end

    def find_team
        @team = Team.find(params[:id])
    end
end
