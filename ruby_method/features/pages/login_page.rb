# encoding: utf-8

class LoginPage < SitePrism::Page
  set_url 'https://uat.ormuco.com/login'

  element  :select_language, 'div.lang_selected'
  elements :languages, '#lang_menu_dropdown td.lang_name'

  element  :main_logo, 'div.main_logo'

  element  :input_username, '#username'
  element  :input_password, '#password'
  element  :btn_forgot_password, '#login_form a'

  element  :warning_message, '#login_form div div div span'

  element  :btn_sign_in, '#login_form button'
  element  :btn_create_account, '#login_form > span'

  element  :btn_reseller_portal, 'div > a'
end
