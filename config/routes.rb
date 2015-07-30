Rails.application.routes.draw do

# Routes to CREATE directors

get("/directors/new_form", { :controller => "imdbs", :action => "new_form" })
get("/directors/create_director", { :controller => "imdbs", :action => "create_director_row" })

# Routes to READ directors

get("/directors", { :controller => "imdbs", :action => "directors" })
get("/directors/:id", { :controller => "imdbs", :action => "director_details" })

# # Routes to DELETE directors

get("/delete_director/:id", { :controller => "imdbs", :action => "destroy" })

  # get("/photos/new", { :controller => "photos", :action => "new_form" })
  # get("/photo/create_photo", { :controller => "photos", :action => "create_row" })

  # # Routes to READ photos
  # get("/photos",           { :controller => "photos", :action => "index" })
  # get("/photos/:id",       { :controller => "photos", :action => "show" })

  # # Routes to UPDATE photos
  # get("/photos/:id/edit", { :controller => "photos", :action => "edit_form" })
  # get("/update_photo/:id", { :controller => "photos", :action => "update_row" })

  # # Routes to DELETE photos
  # get("/delete_photo/:id", { :controller => "photos", :action => "destroy" })

end
