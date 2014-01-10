class ReinforcementsController < ApplicationController

	before_action :login_required

	def index
		@reinforcements = Reinforcement.all

		respond_to do |format|
			format.html
			format.json { render json: @reinforcements}
		end
	end

	def show
		@reinforcement = Reinforcement.find(params[:id])
		respond_to do |format|
			format.html
			format.json { render json: @reinforcements}
		end
	end

	def new
		@reinforcement = Reinforcement.new
	end

	def create
		@reinforcement = Reinforcement.new(reinforcement_params)
		if @reinforcement.save
			flash[:notice] = "Reinforcement was successfully created."
			redirect_to reinforcements_path(@reinforcement)
		else
			render :actoin => "new"
		end
		
	end

	def update
		@reinforcement = Reinforcement.find(params[:id])

		if @reinforcement.update(reinforcement_params)
			redirect_to reinforcement_path(@reinforcement)
		else
			render :edit
		end
	end

	def edit
		@reinforcement = Reinforcement.find(params[:id])
	end

	def destroy
		@reinforcement = Reinforcement.find(params[:id])

		@reinforcement.destroy

		redirect_to reinforcements_path
	end

	private

	def reinforcement_params
		params.require(:reinforcement).permit(:title, :description, :url, :attachment)
	end
end
