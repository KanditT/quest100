# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Brag Page', type: :feature do
  describe 'page structure and content' do
    before { visit brag_path }

    it 'displays the page title' do
      expect(page).to have_css('[data-test-id="brag-title"]', text: 'My Brag Page')
    end

    it 'shows the back button with correct link' do # rubocop:disable RSpec/MultipleExpectations
      expect(page).to have_css('[data-test-id="back-to-quests-button"]')
      expect(page).to have_link('Back', href: quests_path)
    end

    it 'displays the main header and subtitle' do # rubocop:disable RSpec/MultipleExpectations
      expect(page).to have_css('[data-test-id="brag-header"]')
      expect(page).to have_text('Goals & Actions 2025')
      expect(page).to have_css('[data-test-id="brag-subtitle"]', text: 'My journey to improvement')
    end

    it 'shows all goal items' do # rubocop:disable RSpec/ExampleLength,RSpec/MultipleExpectations
      expect(page).to have_css('[data-test-id="goal-item-1"]',
                               text: 'Typing: able to type at speed 55 wpm with accuracy 95%')
      expect(page).to have_css('[data-test-id="goal-item-2"]',
                               text: 'English: improve my English skill and achieve IELTS band 6.0 plus')
      expect(page).to have_css('[data-test-id="goal-item-3"]',
                               text: 'Understand and able to work & apply: Git and Scrum')
    end

    it 'displays all action sections' do # rubocop:disable RSpec/MultipleExpectations
      expect(page).to have_css('[data-test-id="self-actions"]', text: '📚 Self')
      expect(page).to have_css('[data-test-id="team-actions"]', text: '👥 Team')
      expect(page).to have_css('[data-test-id="odt-actions"]', text: '🏫 ODT')
      expect(page).to have_css('[data-test-id="client-actions"]', text: '🤝 Client')
    end
  end

  describe 'navigation' do
    it 'navigates back to quests page when back button is clicked' do
      visit brag_path
      click_link 'Back'
      expect(page).to have_current_path(quests_path, ignore_query: true)
    end
  end

  describe 'responsive design' do
    it 'has proper responsive classes' do
      visit brag_path
      expect(page).to have_css('.container.mx-auto.px-4.py-8.max-w-3xl')
    end
  end
end
