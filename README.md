# *fernando_angelin_QA*
Hi! My name is Fernando Angelin. I am an Automated Test Developer almost one full year, already CTFL certified (worldwide recognition) and I will show you my solution to this test.

This repository contains *TWO* methods to do UI Automated Tests in websites.

The first was developed thinking in solve the problem with technologies I am used to in everyday work. To solve the problem, I used Ruby with Cucumber, Capybara, SitePrism and Selenium.

The second was developed thinking in the team but don't letting my strengths outside of the game. As the team knows better Python, I realised that it would be better to solve this problem using Python and their technologies. To do so, I used the Behave Framework. BDD

# How to run it?
- ruby_method:
    - with Ruby installed and Chromedriver (Geckodriver as well)in the System PATH;
    - inside the root folder "ruby_method\", excecute 'bundle install';
    - then, 'cucumber -t@unsuccessful_login', to run in Chrome, by default;
    - to run in Firefox, try 'cucumber -p firefox -p dev -t@unsuccessful_login'.
    - the results will be shown in the terminal.

- python method:
    - with Python installed and Chromedriver (Geckodriver as well)in the System PATH;
    - inside the root folder "python_method\", excecute 'pip install -r requirements.txt';
    - then, 'behave python_method\features\specs\unsuccessful_login.feature', to run in Chrome, by default;
    - to run in Firefox, try 'behave -D web=firefox python_method\features\specs\unsuccessful_login.feature';
    - the results will be shown in the terminal.

# Why I pick BDD with Page Objects to solve the problem?

I think the BDD files are complementary to the Documentation Development, like a Documentation with life. If the behavior is not reproduced, something is wrong. If some behavior will change in the development, the test must to change together. With the Page Objects pattern, the manutenibility gets easier when some elements of the page is changed during the development.
