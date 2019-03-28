"""Hooks file."""
from behave.tag_matcher import ActiveTagMatcher
from ipdb import post_mortem
from json import load
from os import makedirs
from os.path import isdir
from logging import getLogger, config
from python_method.helpers import constants
from selenium import webdriver
import yaml

active_tag_value_provider = {
    "config_0": False
}

active_tag_matcher = ActiveTagMatcher(active_tag_value_provider)


def before_all(context):
    userdata = context.config.userdata
    context.config_0 = userdata.get('config_0', 'False')
    logger_type = userdata.get('logger', 'file_logger')
    context.logger = setup_logger(logger_type)

    web = context.config.userdata.get('web')
    if(web=='chrome'):
        context.browser = webdriver.Chrome()
    else:
        context.browser = webdriver.Firefox()
    
    env = context.config.userdata.get('env')
    if(env=='env1'):
        with open("python_method\helpers\env1.yaml", "r") as file_descriptor:
            data = yaml.load(file_descriptor)
        context.data_env = data
    else:
        with open("python_method\helpers\env2.yaml", "r") as file_descriptor:
            data = yaml.load(file_descriptor)
        context.data_env = data


def before_feature(context, feature):
    pass


def before_scenario(context, scenario):
    if active_tag_matcher.should_exclude_with(scenario.effective_tags):
        scenario.skip(reason="DISABLED ACTIVE-TAG")


def before_tag(context, tag):
    pass


def after_step(context, step):
    if context.config.userdata.get('debug') and step.status == "failed":
        post_mortem(step.exc_traceback)


def after_tag(context, tag):
    pass


def after_scenario(context, scenario):
    pass


def after_feature(context, feature):
    pass


def after_all(context):
    context.browser.quit()


def setup_logger(logger_name):
    if not isdir(constants.LOG_FILE_DIR):
        makedirs(constants.LOG_FILE_DIR)

    with open(constants.LOGGER_CONFIG, 'rt') as f:
        options = load(f)

    config.dictConfig(options)
    return getLogger(logger_name)
