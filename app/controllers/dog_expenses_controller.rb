class DogExpensesController < ApplicationController
  before_action :set_dog_expense, only: [:show, :edit, :update, :destroy]

  # GET /dog_expenses
  # GET /dog_expenses.json
  def index
    @dog_expenses = DogExpense.all
  end

  # GET /dog_expenses/1
  # GET /dog_expenses/1.json
  def show
  end

  # GET /dog_expenses/new
  def new
    @dog_expense = DogExpense.new
  end

  # GET /dog_expenses/1/edit
  def edit
  end

  # POST /dog_expenses
  # POST /dog_expenses.json
  def create
    @dog_expense = DogExpense.new(dog_expense_params)

    respond_to do |format|
      if @dog_expense.save
        format.html { redirect_to @dog_expense, notice: 'Dog expense was successfully created.' }
        format.json { render action: 'show', status: :created, location: @dog_expense }
      else
        format.html { render action: 'new' }
        format.json { render json: @dog_expense.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dog_expenses/1
  # PATCH/PUT /dog_expenses/1.json
  def update
    respond_to do |format|
      if @dog_expense.update(dog_expense_params)
        format.html { redirect_to @dog_expense, notice: 'Dog expense was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @dog_expense.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dog_expenses/1
  # DELETE /dog_expenses/1.json
  def destroy
    @dog_expense.destroy
    respond_to do |format|
      format.html { redirect_to dog_expenses_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dog_expense
      @dog_expense = DogExpense.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dog_expense_params
      params.require(:dog_expense).permit(:dog_id, :charge_id, :show_entry_id, :charge_date, :amount, :note)
    end
end
