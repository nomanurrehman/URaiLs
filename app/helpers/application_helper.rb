module ApplicationHelper
  def get_alert_class(key)
    digest = HashWithIndifferentAccess.new(notice: 'info', alert: 'danger')
    digest[key].present? ? digest[key] : key
  end
end
