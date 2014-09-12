module FlashMessagesHelper

  KEYS = [:error, :success, :notice]

  def flash_messages
    return unless KEYS.any? { |key| flash[key] }

    content_tag(:section, :class => 'flash-messages') do
      content_tag(:ul) do
        KEYS.select {|key| flash[key].present? }.map { |key| flash_message(key) }.join("\n").html_safe
      end
    end
  end

  private

  def flash_message(key)
    content_tag(:li, flash[key], :class => "flash-message flash-#{key}")
  end

end
