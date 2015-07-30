class ImdbsController < ApplicationController

  def directors
    @list_of_directors = Director.all
  end

  def director_details
    @director = Director.find(params["id"])
  end

  def destroy
    @director = Director.find(params["id"])

    @director.destroy

    redirect_to("http://localhost:3000/directors")
  end

end
