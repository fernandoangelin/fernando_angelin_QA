# *fernando_angelin_QA*

Hi! My name is Fernando Angelin. I am an Automated Test Developer for nearly one full year and I am CTFL certified (worldwide recognized). I am going to show my solution to this test.

This repository contains *TWO* methods to do UI Automated Tests in websites.

The first was developed thinking about solving the problem itself using technologies that I am used to at everyday work. To solve the problem, I used Ruby with Cucumber, Capybara, SitePrism and Selenium.

The second was developed thinking about the team without forget my strengths. As the team knows Python better than Ruby (I suppose), I realised that it would be better to solve this problem using Python and their technologies so, I used the Behave Framework. Behavior Driven Development (BDD) files are easy to maintain and understand. I used Selenium as well and Page Objects (similar to SitePrism).

# How to run it?
- ruby_method:
    - with Ruby installed and Chromedriver (Geckodriver as well) in the System PATH;
    - inside the root folder "ruby_method\", excecute 'bundle install';
    - then, 'cucumber -t@unsuccessful_login', to run in Chrome, by default;
    - to run in Firefox, try 'cucumber -p firefox -p dev -t@unsuccessful_login';
    - the results will be shown in the terminal.

- python method:
    - with Python installed and Chromedriver (Geckodriver as well) in the System PATH;
    - inside the root folder "python_method\", excecute 'pip install -r requirements.txt';
    - then, 'behave python_method\features\specs\unsuccessful_login.feature', to run in Chrome, by default;
    - to run in Firefox, try 'behave -D web=firefox python_method\features\specs\unsuccessful_login.feature';
    - by default, it runs with infos from env1.yaml;
    - to set env2.yaml, add '-D env=env2' with the commands aboxe:
        - 'behave -D web=firefox -D env=env2 python_method\features\specs\unsuccessful_login.feature'
    - the results will be shown in the terminal.

# Why I pick BDD with Page Objects to solve the problem?

I think the BDD files are complementary to the Documentation created before and during the development, like a Documentation with life. If the behavior is not reproduced, something is wrong. If some behavior changes in the development, the test must change as well. With the Page Objects pattern, the maintenance gets easier when some elements of the page are changed during the development process.
