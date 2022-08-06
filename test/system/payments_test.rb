require 'application_system_test_case'

class PaymentsTest < ApplicationSystemTestCase
  setup do
    @payment = payments(:one)
  end

  test 'visiting the index' do
    visit payments_url
    assert_selector 'h1', text: 'payments'
  end

  test 'should create payment' do
    visit payments_url
    click_on 'New payment'

    fill_in 'Amount', with: @payment.amount
    fill_in 'Name', with: @payment.name
    fill_in 'User', with: @payment.author_id
    click_on 'Create payment'

    assert_text 'payment was successfully created'
    click_on 'Back'
  end

  test 'should update payment' do
    visit payment_url(@payment)
    click_on 'Edit this payment', match: :first

    fill_in 'Amount', with: @payment.amount
    fill_in 'Name', with: @payment.name
    fill_in 'User', with: @payment.author_id
    click_on 'Update payment'

    assert_text 'payment was successfully updated'
    click_on 'Back'
  end

  test 'should destroy payment' do
    visit payment_url(@payment)
    click_on 'Destroy this payment', match: :first

    assert_text 'payment was successfully destroyed'
  end
end
