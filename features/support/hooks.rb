After do |scenario|
    if scenario.passed?
      page.driver.browser.save_screenshot("#{scenario.__id__}.png")
    end
    
    Capybara.current_session.driver.browser.manage.delete_all_cookies
    Capybara.current_session.driver.quit
    Capybara.page.driver.browser.manage.window.maximize
end