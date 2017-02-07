require "rails_helper"

RSpec.describe Product, type: :model do
  it{ is_expected.to have_db_column(:name).of_type(:string) }
  it{ is_expected.to have_db_column(:description).of_type(:text) }
  it{ is_expected.to have_db_column(:active).of_type(:boolean) }
  it{ is_expected.to have_db_column(:company_id).of_type(:integer) }

  it{ is_expected.to have_db_index(:company_id) }
  it{ is_expected.to have_db_index(:name) }

  it{ is_expected.to belong_to(:company) }

  describe "scopes" do
    subject{ described_class }

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

    context 'find by name' do
      let(:product1) { create(:product, name: 'Модем', active: true) }
      let(:product2) { create(:product, name: 'Новый модем', active: true) }
      before do
        create_list(:product, 3, :active)
        product1
        product2
      end

      it{ expect(subject.by_name(product1.name).map(&:id)).to eq [product1.id, product2.id] }
      it{ expect(subject.by_name(product2.name).map(&:id)).to eq [product2.id] }
    end
  end
end
