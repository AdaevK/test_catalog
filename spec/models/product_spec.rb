require "rails_helper"

RSpec.describe Product, type: :model do
  it{ is_expected.to have_db_column(:name).of_type(:string) }
  it{ is_expected.to have_db_column(:description).of_type(:text) }
  it{ is_expected.to have_db_column(:active).of_type(:boolean) }
  it{ is_expected.to have_db_column(:company_id).of_type(:integer) }

  it{ is_expected.to have_db_index(:company_id) }

  it{ is_expected.to belong_to(:company) }

  describe "scopes" do
    subject{ Product }

    context "if all company not active" do
      before { create_list(:company_with_products, 3, active: false) }

      its(:active) { is_expected.to be_empty }
    end

    context "if all product not active" do
      before { create_list(:product, 3, :disable) }

      its(:active) { is_expected.to be_empty }
    end

    context "if exist company and product active" do
      let(:products) { create_list(:product, 3, :active) }
      before do
        create_list(:company_with_products, 1, active: false)
        create_list(:product, 1, :disable)
      end

      its(:active) { is_expected.to eq products }
    end
  end
end
