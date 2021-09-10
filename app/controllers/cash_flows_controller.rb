class CashFlowsController < ApplicationController
  def create
    @cash_flow = CashFlow.new(cash_flow_params)
    @cash_flow.wallet = Wallet.first
    if @cash_flow.save
      CashFlowServices::Update.new(cash_flow: @cash_flow).run!
      redirect_to root_path, notice: t("cash_flow")
    else
      render root_path
    end
  end

  private

  def cash_flow_params
    params.require(:cash_flow).permit(:money, :name, :category, :income, :wallet_id)
  end
end
