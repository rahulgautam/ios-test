Given(/^I open the first book$/) do
  #user_library_page.open_first_book
end

And(/turn (\d+) pages forward$/) do |pages_to_turn|
  book_reader_page.turn_pages(pages_to_turn)
end

And(/turn (\d+) pages backward$/) do |pages_to_turn|
  book_reader_page.turn_pages(-pages_to_turn.to_i.abs)
end

When(/^I open the first book for reading$/) do
  user_library_page.choose_from_options_menu("Read")
  expect_page(book_reader_page)
end