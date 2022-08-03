class TransactionsController < ApplicationController
  # before_action :set_category, only: %i[new create edit update show destroy]
  before_action :set_transaction, only: %i[edit update update destroy]
  
    def index
      @transactions = Transaction.all
    end
    
    def show; end

    def new
      @category = Category.find(params[:category_id])
      @transaction = Transaction.new
      @categories = Category.where(user_id: current_user.id)
    end

    def edit; end
  
    def create
      @transaction = Transaction.new(transaction_params)
      @transaction.user = current_user
      respond_to do |format|
        if @transaction.save
          format.html { redirect_to @category, notice: 'Transaction was successfully created.' }
          format.json { render :show, status: :created, location: @category }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @transaction.errors, status: :unprocessable_entity }
        end
      end
    end
  
    def update
      if @transaction.update(transaction_params)
        flash[:notice] = 'Transaction was successfully updated'
        redirect_to transaction_path(@transaction)
      else
        render 'edit'
      end
    end
  
    def destroy
      @transaction.destroy
      flash[:notice] = 'Transaction was successfully deleted'
      redirect_to category_transactions_path
    end
  
    private
  
    def transaction_params
      params.require(:transaction).permit(:name, :amount)
    end
  
    def set_category
      @category = Category.find(params[:category_id])
    end

    def set_transaction
      @transaction = Transaction.find(params[:id])
    end
  end
  