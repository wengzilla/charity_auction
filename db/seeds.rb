# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

items = [{
  title: "Day at the Shooting Range",
  caption: "Fees + supplies included!",
  donor: "Greg Austin",
  starting_price: "20",
  photo_url: "http://media-cdn.tripadvisor.com/media/photo-s/03/85/6a/b8/range-702.jpg"
},
{
  title: "4x15 Minute Back Massage",
  caption: "Massages by a Nepalese masseuse!",
  donor: "Sandhya Banskota",
  starting_price: "20",
  photo_url: "http://s3-media4.fl.yelpassets.com/bphoto/AU9p_pPL5SzX7L8IEPQTUA/ls.jpg"
},
{
  title: "Fly Fishing Lessons",
  caption: "Come learn how to fly fish with Doug!",
  donor: "Doug Banty",
  starting_price: "20",
  photo_url: "http://media-cdn.tripadvisor.com/media/photo-s/01/15/2f/2f/fly-fishing-in-reno-on.jpg"
}
]

items.each do |item|
  Item.create(item)
end