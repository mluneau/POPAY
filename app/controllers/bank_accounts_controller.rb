class BankAccountsController < ApplicationController

  def new
    @bank_account = BankAccount.new
  end
  def create
    @bank_account = BankAccount.new(bank_account_params)
    @bank_account.user = current_user
    if @bank_account.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def bank_account_params
    params.require(:bank_account).require([:bank_name, :bank_address, :iban, :swift])
  end
end
