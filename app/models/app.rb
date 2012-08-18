class App < ActiveRecord::Base
  attr_accessible :android_url, :blackberry_url, :ios_url, :name, :other_url
end
