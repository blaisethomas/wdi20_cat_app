class CatsController < ApplicationController

	def index
		@cats = Cat.all.order('id ASC')
	end

	def new
		@cat = Cat.new
	end

	def create
		@cat = Cat.new(cat_params)

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

		if @cat.update_attributes(cat_params)
			redirect_to cat_path(@cat)
		else
			render :edit
		end
	end

	def destroy
		@cat = Cat.find(params[:id])
		@cat.destroy
		redirect_to root_path
	end

private
	def cat_params
		params.require(:cat).permit(:name, :hair_color, :breed, :age, :gender)
	end
end





