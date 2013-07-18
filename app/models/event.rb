class Event < ActiveRecord::Base
	validates_presence_of :organizer_name, :title, :date
  validates_format_of :organizer_email, :with => /[A-Z0-9._%\-]+@(?:[A-Z0-9\-]+\.)+[A-Z]{2,4}/i, :on => :create, :message => 'email format not valid'
  validates_uniqueness_of :title
  validates_format_of :date, :with => /\d{4}-[0-2][0-9]-[0-3][0-9]/, :on => :create, :message => "enter a valid date"
  validate :valid_date
end


def valid_date
  errors.add(:date, "date cannot be in the past") if date < Date.today
end


