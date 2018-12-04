class ApplicationController < ActionController::Base

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to new_user_session_path, :alert => { msg: I18n.t('info.cant_access'), :class => 'alert-danger' }
  end
  def after_sign_in_path_for(resource)
    allcourses_path
  end
end
