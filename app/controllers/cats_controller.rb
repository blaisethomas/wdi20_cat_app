class CatsController < ApplicationController
	before_action :set_cat, only: [:show, :edit, :update, :destroy]

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
	end

	def edit
	end

	def update
		if @cat.update_attributes(cat_params)
			redirect_to cat_path(@cat)
		else
			render :edit
		end
	end

	def destroy
		@cat.destroy
		redirect_to root_path
	end

private
	def cat_params
		params.require(:cat).permit(:name, :hair_color, :breed, :age, :gender)
	end

	def set_cat
		@cat = Cat.find(params[:id])
	end
end





