require 'test_helper'

class SiswasControllerTest < ActionController::TestCase
  setup do
    @siswa = siswas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:siswas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create siswa" do
    assert_difference('Siswa.count') do
      post :create, siswa: { alamat: @siswa.alamat, email: @siswa.email, name: @siswa.name }
    end

    assert_redirected_to siswa_path(assigns(:siswa))
  end

  test "should show siswa" do
    get :show, id: @siswa
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @siswa
    assert_response :success
  end

  test "should update siswa" do
    put :update, id: @siswa, siswa: { alamat: @siswa.alamat, email: @siswa.email, name: @siswa.name }
    assert_redirected_to siswa_path(assigns(:siswa))
  end

  test "should destroy siswa" do
    assert_difference('Siswa.count', -1) do
      delete :destroy, id: @siswa
    end

    assert_redirected_to siswas_path
  end
end
