Before do
$seguro = Seguro.new
$seguroVeiculo = SeguroVeiculo.new

end

After do |scenario|
  add_screenshot(scenario)

  # add_browser_logs if scenario.failed?
end

Before do |_scenario|
  Capybara.configure do |config|
    # digo que o driver padrao eh o do selenium.
    config.default_driver = :selenium
    # defino o tempo maximo de espera para os elementos.
    config.default_max_wait_time = 120
   # Capybara.page.driver.browser.manage.window.maximize
  end
end

def add_screenshot(scenario)
  nome_cenario = scenario.name.gsub(/[^A-Za-z0-9]/, '')
  nome_cenario = nome_cenario.gsub(' ', '_').downcase!
  screenshot = "log/screenshots/#{nome_cenario}.png"
  page.save_screenshot(screenshot)
  # embed(screenshot, 'image/png', 'Print')
end

def add_browser_logs
  time_now = Time.now
  # Getting current URL
  current_url = Capybara.current_url.to_s
  # Gather browser logs
  # logs = page.driver.browser.manage.logs.get(:browser).map { |line| [line.level, line.message] }
  # Remove warnings and info messages
  logs.reject! { |line| %w[WARNING INFO].include?(line.first) }
  logs.any? == true
  embed(time_now.strftime('%Y-%m-%d-%H-%M-%S' + "\n") + ('Current URL: ' + current_url + "\n") + logs.join("\n"), 'text/plain', 'BROWSER ERROR')
end

at_exit do
  time = Time.now.getutc
  ReportBuilder.configure do |config|
   # config.json_path = 'report.json'
    config.report_path = 'cucumber_web_report'
    config.report_types = [:html]
    config.report_tabs = %w[Overview Features Scenarios Errors]
    config.report_title = 'Cucumber Report Builder web automation test results'
    config.compress_images = false
    config.additional_info = { 'Project name' => 'Test', 'Platform' => 'Integration', 'Report generated' => time }
  end
  ReportBuilder.build_report
end
