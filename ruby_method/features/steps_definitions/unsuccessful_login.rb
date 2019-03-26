# encoding: utf-8

Given(/^I am in the login page$/) do
  @login_page = LoginPage.new
  @login_page.load
  sleep 3
end

When(/^I set the user (.+) and password (.+)$/) do |user, password|
  @login_page.wait_until_input_username_visible
  @login_page.wait_until_input_password_visible
  @login_page.input_username.set(user)
  @login_page.input_password.set(password)
end

And(/^click in the Sign In button$/) do
  @login_page.btn_sign_in.click
end

Then(/^must to show a wrong user or password warning message$/) do
  @login_page.wait_until_warning_message_visible
  expect(@login_page).to have_warning_message
end
