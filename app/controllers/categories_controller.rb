class CategoriesController < ApplicationController
before_action :set_category, only: %i[edit update show destroy]

  def index
    @categories = Category.where(user_id: current_user.id)
  end
  
  def show
    @transactions = Transaction.all
  end

  def new
    @category = Category.new
  end

  def edit; end

  def create
    @category = Category.new(category_params)
    @category.user_id = current_user.id
    
    respond_to do |format|
      if @category.save
        format.html { redirect_to categories_path, notice: 'Category was successfully created.' }
        format.json { render :show, status: :created, location: @category }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    if @category.update(category_params)
      flash[:notice] = 'Category was successfully updated'
      redirect_to category_path(@category)
    else
      render 'edit'
    end
  end

  def destroy
    @category.destroy
    flash[:notice] = 'Category was successfully deleted'
    redirect_to categories_path
  end

  private

  def category_params
    params.require(:category).permit(:name, :icon)
  end

  def set_category
    @category = Category.find(params[:id])
  end
end
