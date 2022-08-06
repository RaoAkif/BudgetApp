require 'application_system_test_case'

class CategoryPaymentsTest < ApplicationSystemTestCase
  setup do
    @category_payment = category_payments(:one)
  end

  test 'visiting the index' do
    visit category_payments_url
    assert_selector 'h1', text: 'Category payments'
  end

  test 'should create category payment' do
    visit category_payments_url
    click_on 'New category payment'

    fill_in 'payment', with: @category_payment.payment_id
    fill_in 'Category', with: @category_payment.category_id
    click_on 'Create Category payment'

    assert_text 'Category payment was successfully created'
    click_on 'Back'
  end

  test 'should update Category payment' do
    visit category_payment_url(@category_payment)
    click_on 'Edit this category payment', match: :first

    fill_in 'payment', with: @category_payment.payment_id
    fill_in 'Category', with: @category_payment.category_id
    click_on 'Update Category payment'

    assert_text 'Category payment was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Category payment' do
    visit category_payment_url(@category_payment)
    click_on 'Destroy this category payment', match: :first

    assert_text 'Category payment was successfully destroyed'
  end
end
