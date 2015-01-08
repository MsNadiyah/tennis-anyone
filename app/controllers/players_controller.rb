class PlayersController < ApplicationController

	# Shows all of the players
	def index
		@players = Player.all
	end

	# Shows one particular player based on the ID
	def show
		@player = Player.find(params[:id])
	end

	def new
		@player = Player.new
	end

	def create
		@player = Player.new(player_params)

		if @player.save # If the save was successful...
			flash[:notice] = "Success!! Welcome to Tennis-Anyone"
			redirect_to players_path
		else # If the save fails
			flash[:notice] = "Error.  Please try again."
			render "new"
		end		

	end

	def edit
		@player = Player.find(params[:id])
	end

	def update
		@player = Player.find(params[:id])

		if player.save
			flash[:notice] = "Success!! We've updated your profile"
			redirect_to players_path
		else
			flash[:notice] = "Error.  Please try again."
			render "edit"
		end
	end

	def destroy
	end

	# Methods defined in private can only be referenced inside the controller
	private

	def player_params
		params.require(:player).permit(:name, :zip, :level, :email, :password, 
				:password_confirmation, :gender, :blurb, :type_of_play, :availability, 
				:secret_weapon, :goal, :interest_lessons, :interest_league)

		# Requiring the name field
		# Requiring the zip field
		# Requiring the level field
		# Requiring the email field
		# Requiring the password field
		# Requiring the password_confirmation field
	end
end
