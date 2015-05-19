class WelcomeController < ApplicationController
  def index
  	@countries = ['England', 'Brasil', 'Buenos Aires', 'Greece']
  @travel_pics = ['greece1.jpg', 'greece2.jpg','greece6.jpg']
  end

  def about
  end

end

  