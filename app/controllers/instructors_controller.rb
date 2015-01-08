class InstructorsController < ApplicationController

	def index
		@instructors = Instructor.all
	end

	def show
		@instructor = Instructor.find(params[:id])
	end

	# The New controller action is created because a separate form and model are used to create a new instructor
	def new
		@instructor = Instructor.new
	end

	def create
		@instructor = Instructor.new(instructor_params)

		if @instructor.save
			flash[:notice] = "Success!! Welcome to Tennis Anyone"
			redirect_to instructor_path(@instructor)
		else
			render :new
		end
	end

	def edit
	end

	def update
	end

	def destroy
	end	

	private

	def instructor_params
		params.require(:instructor).permit(:name, :zip, :radius, :email, :password, 
			:password_confirmation, :highest_level, :tennis_history, :lesson_type, 
			:lesson_ages, :lesson_speciality, :rate_hourly, :rate_clinic, :pro_availability)
	end
	
end
