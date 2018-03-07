# Load Event Handler
Dir["./events/*.rb"].each {|file| require file }

class Bot
  def initialize(opts = {})
    @bot = Discordrb::Bot.new token: ENV['BOT_TOKEN'], client_id: ENV['BOT_CLIENT']

    @bot.message do |event|
      handler = EventHandler.new(event.message.content)
      event.respond handler.delegate
    end

    @bot.run
  end

end

BOT = Bot.new()




