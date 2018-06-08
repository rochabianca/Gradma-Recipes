module ApplicationHelper
  def flash_messages
    messages = ""
    [:notice, :alert].each { |type| 
      if flash[type]
        messages += "<div class='alert alert--#{type}'><ion-icon name='close'></ion-icon><p>#{flash[type]}</p></div>"
      end
    }
    messages.html_safe
  end
end
