class Photo < ActiveRecord::Base

has_attached_file :image,
  styles:  { medium: "300x450", thumb: "100x150" }
validates_attachment_content_type :image,
  content_type: ["image/jpg","image/jpeg","image/png"]

end
