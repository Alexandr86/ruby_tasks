require "notifier/version"
require "net/smtp"

module Notifier
  class MessagesSender
    def initialize(host, from, to, message)
      @host=host
      @from=from
      @to=to
      @message = message
    end
    def send_message
    Net::SMTP.start(@host) do |smtp|
    smtp.send_message(@message, @from, @to)
      end
    end
end
end
