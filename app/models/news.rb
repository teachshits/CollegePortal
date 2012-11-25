class News < ActiveRecord::Base
  attr_accessible :picture, :text, :title
  has_attached_file :picture,:styles => { :original => "558x524>", :small => "150x150>"},:content_type => "image/*",
  :size => { :in => 20..20000.kilobytes }
  validates :title, :presence => true,
                    :length => { :minimum => 5 }

  validates :text, :presence => true,
                    :length => { :minimum => 50 }
  validates :picture, :presence => true  
end
