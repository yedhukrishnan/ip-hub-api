class SubjectsController < ApplicationController
	def create
		@subject = Subject.new(subject_params)
		if @subject.save
			render json: @subject
		else
			render json: @subject.errors.full_messages
		end
	end

	def index
		@subjects = Subject.all 
		render json: @subjects
	end

	private

	def subject_params
		puts params
		params.require(:subject).permit(:name, :code)
	end
end
