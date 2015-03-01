module ApplicationHelper

  def render_error_messages(resource)
    if resource.errors.any?
      content_tag :ul, class: "error-messages" do
        errors = @resume.errors.messages.reject do |key,val|
          @resume.class.reflections.keys.include? key
        end
        errors.map do |attr, msg|
          attr_string = t("attr_names.resume.#{attr.to_s}")
          content_tag :li, "#{attr_string} #{msg.first}"
        end.join.html_safe
      end.html_safe
    end
  end

  def render_flash_messages
    flash.map do |type,msg|
      content_tag :div, msg, class: "alert alert-#{type}"
    end.join.html_safe
  end

end
