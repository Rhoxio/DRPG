class EventHandler

  def initialize(command)
    @command = command
  end

  def delegate
    if @command == "!test"
      self.respond('Success!')
    else
      self.respond('Something else...')
    end
  end

  def respond(text)
    return text
  end

end
