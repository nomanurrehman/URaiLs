module DeviseHelper
  
  def devise_error_messages!

    return "" unless devise_error_messages?

    messages = resource.errors.map { | key, message | message }.join("<br />")

    html = <<-HTML
    <div class="alert alert-danger alert-dismissible align-center" role="alert">
      <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button>
      #{messages}
    </div>
    HTML

    html.html_safe
  end

  def devise_error_messages?
    !resource.errors.empty?
  end

end