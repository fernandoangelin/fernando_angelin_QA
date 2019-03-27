from page_objects import PageObject, PageElement, MultiPageElement

class LoginPage(PageObject):
    select_language = PageElement(css='div.lang_selected')

    languages = MultiPageElement(css='#lang_menu_dropdown td.lang_name')

    main_logo = PageElement(css='div.main_logo')

    input_username = PageElement(id_='username')
    input_password = PageElement(id_='password')
    btn_forgot_password = PageElement(css='#login_form a')

    warning_message = PageElement(css='#login_form div div div span')

    btn_sign_in = PageElement(css='#login_form button')
    btn_create_account = PageElement(css='#login_form > span')

    btn_reseller_portal = PageElement(css='div > a')
