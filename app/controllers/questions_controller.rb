class QuestionsController < ApplicationController

	def index
		@questions = Question.all

		respond_to do |format|
			format.html
			format.json { render json: @questions}
		end
	end

	def show
		@question =Question.find(params[:id])

		respond_to do |format|
			format.html
			format.json { render json: @question}
		end
	end

	def new
		@question = Question.new
	end

	def create
		@question = Question.new(question_params)
		@question.save

		redirect_to questions_path
	end

	def edit
		@question = Question.find(params[:id])
	end

	def update
		@question = Question.find(params[:id])

		if @question.update(question_params)
			redirect_to question_path(@question)
		else
			render :edit
		end
	end

	def destroy
		@question = Question.find(params[:id])

		@question.destroy

		redirect_to questions_path
	end

	private

	def question_params
		params.require(:question).permit(:title, :category, :img, :answer, :attachment)
	end
end
