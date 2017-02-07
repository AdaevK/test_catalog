require "rails_helper"

RSpec.describe ProductsController, type: :controller do
  context "GET index" do
    let(:products) { create_list(:product, 3, :active) }

    before do
      create_list(:product, 3, :disable)
      get :index
    end

    it{ expect(response).to have_http_status :ok }
    it{ expect(response).to render_template :index }
    it{ expect(assigns(:products)).to eq products }
  end
end
