require 'test_helper'

class FamiliesControllerTest < ActionController::TestCase
  setup do
    @family = families(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:families)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create family" do
    assert_difference('Family.count') do
      post :create, family: { allergies: @family.allergies, cabin: @family.cabin, camp: @family.camp, contribution: @family.contribution, day_full_weekend: @family.day_full_weekend, day_partial_weekend: @family.day_partial_weekend, friday_snack: @family.friday_snack, friday_supper: @family.friday_supper, late_fee: @family.late_fee, paid: @family.paid, saturday_breakfast: @family.saturday_breakfast, saturday_dinner: @family.saturday_dinner, saturday_lunch: @family.saturday_lunch, saturday_snack: @family.saturday_snack, sunday_breakfast: @family.sunday_breakfast, sunday_lunch: @family.sunday_lunch }
    end

    assert_redirected_to family_path(assigns(:family))
  end

  test "should show family" do
    get :show, id: @family
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @family
    assert_response :success
  end

  test "should update family" do
    put :update, id: @family, family: { allergies: @family.allergies, cabin: @family.cabin, camp: @family.camp, contribution: @family.contribution, day_full_weekend: @family.day_full_weekend, day_partial_weekend: @family.day_partial_weekend, friday_snack: @family.friday_snack, friday_supper: @family.friday_supper, late_fee: @family.late_fee, paid: @family.paid, saturday_breakfast: @family.saturday_breakfast, saturday_dinner: @family.saturday_dinner, saturday_lunch: @family.saturday_lunch, saturday_snack: @family.saturday_snack, sunday_breakfast: @family.sunday_breakfast, sunday_lunch: @family.sunday_lunch }
    assert_redirected_to family_path(assigns(:family))
  end

  test "should destroy family" do
    assert_difference('Family.count', -1) do
      delete :destroy, id: @family
    end

    assert_redirected_to families_path
  end
end
