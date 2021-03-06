module PageObjectModel
  module PageActions
    def expect_page(page)
      page.await(timeout: 15)
      expect(page).to be_displayed
    rescue => e
      raise RSpec::Expectations::ExpectationNotMetError, "Page verification failed\n   Expected page: '#{page.class.to_s.demodulize}' with trait \"#{page.trait}\"\n \nTimeout: #{e.message}"
    end
  end
end

World(PageObjectModel::PageActions)