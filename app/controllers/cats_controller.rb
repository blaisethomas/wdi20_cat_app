class CatsController < ApplicationController
	def index
		@cats = Cat.all.order('id ASC')
	end

	def new
		@cat = Cat.new
	end

	def create
		@cat = Cat.new(params.require(:cat).permit(:name, :hair_color, :breed, :age, :gender))

		if @cat.save
			redirect_to cats_path
		else
			render :new
		end
	end

	def show
		@cat = Cat.find(params[:id])
	end

	def edit
		@cat = Cat.find(params[:id])
	end

	def update
		@cat = Cat.find(params[:id])

		if @cat.update_attributes(params.require(:cat).permit(:name, :hair_color, :breed, :age, :gender))
			redirect_to cat_path(@cat)
		else
			render :edit
		end
	end

	def destroy
	end
end
