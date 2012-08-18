class CreateApps < ActiveRecord::Migration
  def change
    create_table :apps do |t|
      t.string :name
      t.string :ios_url
      t.string :android_url
      t.string :blackberry_url
      t.string :other_url

      t.timestamps
    end
  end
end
