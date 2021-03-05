After do
  temp_shot = page.save_screenshot("logs/temp_screenshot.png")
  Allure.add_attachment(
    name: "Screenshot",
    type: Allure::ContentType::PNG,
    source: File.open(temp_shot),
  )
end
