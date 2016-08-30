module HomeHelper
  def button_tag_no_submit(name, value, options = {})
    button_class = nil
    if options[:class]
      button_class = "class=#{options[:class]}"
    end
    text_html = "<button id='#{name}' name='#{name}' #{button_class}>
                  #{value}
                </button>"
    text_html.html_safe
  end
end
