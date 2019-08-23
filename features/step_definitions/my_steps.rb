Given(/^que abri la aplicacion$/) do
    visit "/"
  end

  Given(/^la palabra es "([^"]*)"$/) do |word|
    word == "dog"
  end

  Then(/^debo ver "([^"]*)"$/) do |word|
    expect(page.body).to match /#{word}/m
  end