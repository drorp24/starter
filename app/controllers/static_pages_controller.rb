class StaticPagesController < ApplicationController
  before_filter :authenticate_user!, :only => [:private]


  def home
  end

  def private

  end

end
