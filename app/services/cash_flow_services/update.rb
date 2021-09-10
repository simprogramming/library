module CashFlowServices
  class Update
    def initialize(cash_flow:)
      @cash_flow = cash_flow
    end

    def run!
      ActiveRecord::Base.transaction do
        if @cash_flow.income
          wallet = @cash_flow.wallet
          wallet.money += @cash_flow.money
          wallet.save
        else
          wallet = @cash_flow.wallet
          wallet -= @cash_flow.money
          wallet.save
        end
      end
    end
  end
end