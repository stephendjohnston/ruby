class Banner
  def initialize(message, banner_width=nil)
    @message = message
    @banner_width = banner_width
  end

  def to_s
    [horizontal_rule, empty_line, message_line, empty_line, horizontal_rule].join("\n")
  end

  private

  def horizontal_rule
    "+-#{'-' * (@banner_width)}-+"
  end

  def empty_line
    "| #{' ' * (@banner_width)} |"
  end

  def message_line
    "| #{@message.center(@banner_width)} |"
  end
end

banner = Banner.new('To boldly go where no one has gone before.', 70)
puts banner

banner = Banner.new('', 34)
puts banner
