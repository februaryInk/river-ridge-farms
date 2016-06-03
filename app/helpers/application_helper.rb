module ApplicationHelper
  def google_api_url
    'https://maps.googleapis.com/maps/api/js'
  end
  
  # Determine the namespace of the current controller.
  def namespace
    controller.class.parent.name == "Object" ? "" : controller.class.parent.name.underscore.gsub("_", "-")
  end
  
  # Define a class for the page body by joining the names of the namespace, 
  # controller, and action names, after removing any empty values.
  def page_body_class
    namespace_called = namespace
    controller_called = controller_name.underscore.gsub("_", "-")
    action_called = action_name.gsub("_", "-")
    resource_called = defined?(resource_name) ? resource_name.to_s.gsub("_", "-") : ""

    ([namespace_called, controller_called, action_called].reject { |name| name.blank? }).join("-") + (resource_called.present? ? " #{resource_called}" : "")
  end
end
