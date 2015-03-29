module FlashMessagesHelper

  def flash_messages
    content_tag(:section, :class => 'flash-messages') do
      content_tag(:ul) do
        flash.map do |key, value|
          concat content_tag(:li, value, :class => "flash-message flash-#{key}")
        end
      end
    end
  end

end
