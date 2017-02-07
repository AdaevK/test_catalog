require "rails_helper"

feature 'Test products company' do
  given(:product1) { create(:product, :active, name: 'Модем') }
  given(:product2) { create(:product, :active, name: 'Новый модем') }
  given(:not_active_product) { create(:product, :disable, name: 'Модем 1') }
  given(:product_with_not_active_company) { create(:product, :with_disable_company, active: true) }

  background do
    product1
    product2
    not_active_product
    product_with_not_active_company
  end

  scenario 'Find by name products' do
    visit root_path

    expect(page).to have_content(product1.name)
    expect(page).to have_content(product2.name)
    expect(page).to_not have_content(not_active_product.name)
    expect(page).to_not have_content(product_with_not_active_company.name)

    within('#product_filter') do
      fill_in 'meta_filter_by_name', with: product1.name
    end

    click_button 'Найти'

    expect(page).to have_content(product1.name)
    expect(page).to have_content(product2.name)
    expect(page).to_not have_content(not_active_product.name)
    expect(page).to_not have_content(product_with_not_active_company.name)

    within('#product_filter') do
      fill_in 'meta_filter_by_name', with: product2.name
    end

    click_button 'Найти'

    expect(page).to_not have_content(product1.name)
    expect(page).to have_content(product2.name)
    expect(page).to_not have_content(not_active_product.name)
    expect(page).to_not have_content(product_with_not_active_company.name)
  end
end
