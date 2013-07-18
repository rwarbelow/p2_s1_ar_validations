require 'faker'

10.times do |i|
  Event.create({
    :date => Date.today + rand(500),
    :title => "Event #{(rand(500))}",
    :organizer_name => "Organizer #{(rand(500))}",
    :organizer_email => "organizer_#{(rand(500))}@example.com" })
end
