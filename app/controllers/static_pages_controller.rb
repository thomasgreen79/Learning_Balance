class StaticPagesController < ApplicationController
  def home
    session[:current_page] = 'home'
  end

  def background
  end

  def five_element_system
  end

  def resources
  end

  def contact
  end

  def usage
  end

  def tour
  end

  def login
  end

  #Admin pages
end
