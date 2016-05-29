module ApplicationHelper

  def asset_path_patch type
    "assets/#{Rails.application.assets["app.#{type}"].digest_path}"
  end

end
