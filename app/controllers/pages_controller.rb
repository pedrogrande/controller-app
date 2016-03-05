class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:about, :home, :contact]
  layout 'admin', only: :admin
  def home
  end

  def admin
  end

  def contact
  end

  def about
  end
end
