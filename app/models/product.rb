class Product < ActiveRecord::Base

	has_attached_file :avatar, :styles => { :medium => "400x500>", :thumb => "118x200>" }
  default_scope :order => 'title'
    
  has_and_belongs_to_many :categories
  
  validates :title, :presence => true, :uniqueness => true, :length => {:minimum => 3}

  def self.search(query)
    where("title like ?", "%#{query}%")
  end

    
end
