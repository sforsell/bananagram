require 'rubygems'
require 'twilio-ruby'

account_sid = "AC44f79a5abe9c3fcd4178f73aee7ac08d"
auth_token = "51d80132c443c44b84fde452eb4243c6"
client = Twilio::REST::Client.new account_sid, auth_token

from = "+16465026046" # Your Twilio number

puts "type in your message!"
message = gets.chomp

puts "Who do you want to send it to? i.e 'John', 'Akash', 'everyone'?"
receiver = gets.chomp

friends = {
"+15623879191" => "Sara",
"+19145366151" => "Sofia",
"+12018159696" => "John",
"+18485655625" => "Steve"

}


if receiver == "everyone"
  friends.each do |key, value|
    client.messages.create(
      from: from,
      to: key,
      body: "Hey #{value}, #{message}",
      media_url: "http://rs255.pbsrc.com/albums/hh121/fgf284/Banana2.gif~c200"
    )
    puts "Sent message to #{value}"
  end
else
  client.messages.create(
    from: from,
    to: friends.key(receiver),
    body: "Hey #{receiver}, #{message}",
    media_url: "http://rs255.pbsrc.com/albums/hh121/fgf284/Banana2.gif~c200"
    )
  puts "Sent message to #{receiver}"
end

