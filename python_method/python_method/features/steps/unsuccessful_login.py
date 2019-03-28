from time import sleep
from behave import given, when, then
from selenium import webdriver

from python_method.features.pages.loginPage import LoginPage

@given(u'I am in the login page')
def access_login_page(context):
    link = context.data_env.get('url')
    context.login_page = LoginPage(context.browser, root_uri=link)
    context.login_page.get('/login')
    sleep(5)

@when(u'I set the user and password and click in the Sign In button')
def set_login(context):

    context.login_page.input_username = context.data_env.get('email')
    context.login_page.input_password = context.data_env.get('password')

    context.login_page.btn_sign_in.click()
    sleep(3)

@then(u'must to show a wrong user or password warning message')
def verify_message(context):
    assert(context.login_page.warning_message != None), "The message was: "
    print(context.login_page.warning_message.text)
