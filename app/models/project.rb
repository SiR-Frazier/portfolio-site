class List < ActiveRecord::Base
  validates :title, :presence => true
  validates :description, :presence => true
  validates :technologies_used, :presence =>
end
