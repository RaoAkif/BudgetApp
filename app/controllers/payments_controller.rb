class PaymentsController < ApplicationController
  before_action :set_category, only: %i[new create edit update show destroy]
  before_action :set_payment, only: %i[edit update destroy]
  
    def new
      @payment = Payment.new
      @categories = Category.where(author: current_user)
    end

    def edit; end
  
    def create
      @payment = @category.payments.new(payment_params)
      @payment.author_id = current_user.id
  
      respond_to do |format|
        if @payment.save
          format.html { redirect_to @category, notice: 'Payment was successfully created.' }
          format.json { render :show, status: :created, location: @payment }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @payment.errors, status: :unprocessable_entity }
        end
      end
    end

    def update
      respond_to do |format|
        if @payment.update(payment_params)
          format.html { redirect_to @category, notice: 'Payment was successfully updated.' }
          format.json { render :show, status: :ok, location: @payment }
        else
          format.html { render :edit, status: :unprocessable_entity }
          format.json { render json: @payment.errors, status: :unprocessable_entity }
      end
    end
  
    def destroy
      @payment.destroy

      respond_to do |format|
        format.html { redirect_to @category, notice: 'Payment was successfully destroyed.' }
        format.json { head :no_content }
      end
    end
  
    private
    
    def set_payment
      @payment = Payment.find(params[:id])
    end
  
    def set_category
      @category = Category.find(params[:category_id])
    end
  
    def payment_params
      params.require(:payment).permit(:name, :amount).merge(author_id: current_user.id)
    end
  end
end