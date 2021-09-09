class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: :home
  def home
    @wallet = Wallet.first
  end
end
