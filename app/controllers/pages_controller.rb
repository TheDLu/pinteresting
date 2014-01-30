class PagesController < ApplicationController
  def home
  end

  def about
  end

  def project
  end

  def test
    @pinsMoveable = Pin.all.order("created_at DESC")
  end
  
end
