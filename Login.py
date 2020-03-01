"""
Code currently works in windows
Requires the following:
python3
pip install selenium
chromedriver in PATH


"""
from selenium import webdriver
from selenium.webdriver.common.keys import Keys
from time import sleep
from selenium.webdriver.chrome.options import Options

class Login:

    def __init__(self, url='http://quotes.toscrape.com/login', username="uname", password="password1"):
        options = Options()
        options.add_argument("start-maximized")
        options.add_argument("disable-notifications")
        self.driver = webdriver.Chrome(chrome_options=options)
        print("Loading driver browser")
        self.driver.get(url)
        print("Opened login URL")
        self.user_login(username=username, pw=password)

    def user_login(self, username, pw):
        sleep(2)
        self.driver.find_element_by_id('username').send_keys(username)
        self.driver.find_element_by_id('password').send_keys(pw)
        self.driver.find_element_by_id('password').send_keys(Keys.RETURN)
        print("Logged in")
        sleep(4)

Login()
input('')
