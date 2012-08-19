class App < ActiveRecord::Base
  attr_accessible :android_url, :blackberry_url, :ios_url, :name, :other_url
  
  validates :name, :presence => true
  validates_format_of :other_url, :with => URI::regexp(%w(http https))
  validates_format_of :android_url, :with => URI::regexp(%w(http https)), :allow_blank => true
  validates_format_of :ios_url, :with => URI::regexp(%w(http https)), :allow_blank => true
end
