require 'rails_helper'

describe TacosController, type: :controller do
  let(:chicken_taco_with_salsa) { build :taco, :chicken, :with_rice  }
  let(:steak_taco_with_rice)    { build :taco, :steak,   :with_salsa }
  let(:pork_taco_with_all_sides){ build :taco, :pork,    :with_all_sides }
  let(:lamb_taco) { Taco.new(meat: 'lamb')}

  describe 'POST #create' do
    it 'successfully create a chicken taco with salsa' do
      post :create, params: { taco: chicken_taco_with_salsa.as_json }, format: :json
      expect(response).to be_success
      expect(response).to have_http_status(201)
    end

    it 'successfully create a steak taco with rice' do
      post :create, params: { taco: steak_taco_with_rice.as_json }, format: :json
      expect(response).to be_success
      expect(response).to have_http_status(201)
    end

    it 'successfully create a pork taco with all sides' do
      post :create, params: { taco: pork_taco_with_all_sides.as_json }, format: :json
      expect(response).to be_success
      expect(response).to have_http_status(201)
    end

    it 'fails to create a lamb taco' do
      post :create, params: { taco: lamb_taco.as_json }, format: :json
      expect(response).not_to be_success
    end
  end

  describe 'GET #index' do
    it 'shows a list of all created tacos' do
      get :index, format: :json
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end
  end


end
