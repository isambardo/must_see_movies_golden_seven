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
    redirect_to("/directors")
  end

  def new_form
  end

  def create_director_row

    d = Director.new
    d.name = params["name"]
    d.bio = params["bio"]
    d.dob = params["dob"]
    d.image_url = params["image_url"]
    d.save

    redirect_to("/directors")
  end

   def update_director_row
    d = Director.find(params["id"])
    d.name = params["name"]
    d.bio = params["bio"]
    d.dob = params["dob"]
    d.image_url = params["image_url"]
    d.save

    redirect_to("/directors")
  end

  def edit_form
    @director = Director.find(params["id"])
  end

end
