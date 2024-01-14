class ApplicationController < ActionController::Base
# deviseコントローラにストロングパラメータを追加
# before_action :configure_permitted_parameters, if: :devise_controller?



protected
  # 編集画面から画像を受け取れるよう設定
  # def configure_permitted_parameters
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:name, :avatar])
  # end    
    
  # ゴミ  
  # def after_sign_in_path_for(resource)
  #   blogs_path
  # end  
    
end
