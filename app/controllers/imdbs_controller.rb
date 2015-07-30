class ImdbsController < ApplicationController
  def directors
    @list_of_directors = Director.all
  end

  def director_details
    @director = Director.find(params["id"])
  end

end
