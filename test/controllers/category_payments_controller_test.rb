require 'test_helper'

class CategoryPaymentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @category_payment = category_payments(:one)
  end

  test 'should get index' do
    get category_payments_url
    assert_response :success
  end

  test 'should get new' do
    get new_category_payment_url
    assert_response :success
  end

  test 'should create category_payment' do
    assert_difference('CategoryPayment.count') do
      post category_payments_url,
           params: { category_payment: { payment_id: @category_payment.payment_id, category_id: @category_payment.category_id } }
    end

    assert_redirected_to category_payment_url(CategoryPayment.last)
  end

  test 'should show category_payment' do
    get category_payment_url(@category_payment)
    assert_response :success
  end

  test 'should get edit' do
    get edit_category_payment_url(@category_payment)
    assert_response :success
  end

  test 'should update category_payment' do
    patch category_payment_url(@category_payment),
          params: { category_payment: { payment_id: @category_payment.payment_id, category_id: @category_payment.category_id } }
    assert_redirected_to category_payment_url(@category_payment)
  end

  test 'should destroy category_payment' do
    assert_difference('CategoryPayment.count', -1) do
      delete category_payment_url(@category_payment)
    end

    assert_redirected_to category_payments_url
  end
end
