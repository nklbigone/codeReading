require 'slack-notifier'
require 'clockwork'
require 'active_support/time'
module Clockwork
  handler do |send|
    notifier = Slack::Notifier.new('https://hooks.slack.com/services/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')
    notifier.ping('Hello Alexis how are you to day')
  end
  every(180.seconds, 'send')
end


