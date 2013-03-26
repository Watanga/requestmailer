class Message
  include ActiveAttr::Model
  
  attribute :name
  attribute :email
  attribute :comments
  attribute :checkin
  attribute :checkout
  attribute :hood
  attribute :guests
  attribute :rooms
  attribute :country

  attr_accessible :checkin, :checkout, :comments, :country, :email, :guests, :hood, :name, :rooms

  validates_presence_of :name
  validates_format_of :email, :with => /^[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}$/i
  validates_length_of :comments, :maximum => 500
end