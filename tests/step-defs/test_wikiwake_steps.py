from pytest_bdd import scenario, given, then, when
import pytest
from selenium import webdriver
import time

@scenario('.../features/waketech.feature', 'Using Wikipedia to search for wake Tech')
def func():
    pass

def webDriver():
    driver = webdriver.Chrome()
    time.sleep(8)
    driver.close

@given('the Wikipedia page is open')
def openWiki(driver):
    driver.get("http://en.wikipedia.org/wiki/Main_Page")

@when('wake tech is entered into the search bar')
def searchBarInput(driver):
    search_bar = driver.find_element_by_name("search")
    search_bar.clear()
    search_bar.send_keys("wake tech")
    driver.find_element_by_id('searchButton').click()

@then('the results are returned and the wake technical community college page is shown')
def openWakeWiki(driver):
    title = driver.title
    assert title == "Wake Technical Community College - Wikipedia"