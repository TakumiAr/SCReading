require "slack-notify"
require 'clockwork'

client = SlackNotify::Client.new(webhook_url: "https://hooks.slack.com/services/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")
client.notify("Hello There!", "#codereadingwork")

include Clockwork
handler do |job|
  puts "Running #{job}"
end

every(3.minutes,"3分に1回") do
    client.notify("Hello There!", "#codereadingwork")
end