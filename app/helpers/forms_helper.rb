module FormsHelper
  class CustomFormBuilder < ActionView::Helpers::FormBuilder
  
    def full_error_message(attribute)
      
      if @object.errors[attribute].any?
        @template.content_tag(:p, { :class => "full-error-message" }) do
          messages = @object.errors.messages[attribute].collect { |message| "#{attribute.to_s.humanize} #{message}." }
          messages.join("<br>").html_safe
        end
      end
    end
   
    def error_message(attribute)
    
      if @object.errors[attribute].any?
        @template.content_tag(:p, { :class => "error-message" }) do
          @object.errors.messages[attribute].join(", ")
        end
      end
    end
  end
end
