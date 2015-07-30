class ImdbsController < ApplicationController
  def directors
    @list_of_directors = Director.all
  end
end
