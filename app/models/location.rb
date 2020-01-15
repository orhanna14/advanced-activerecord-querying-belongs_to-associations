class Location < ActiveRecord::Base
  belongs_to :region
  has_many :people

  def self.in_region(region)
    joins(:region).where(regions: { name: region })
    # if it's in the regoin in should return truw. 
  end
end
