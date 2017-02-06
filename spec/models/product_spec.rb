require "rails_helper"

RSpec.describe Product, type: :model do
  it{ is_expected.to have_db_column(:name).of_type(:string) }
  it{ is_expected.to have_db_column(:description).of_type(:text) }
  it{ is_expected.to have_db_column(:active).of_type(:boolean) }
  it{ is_expected.to have_db_column(:company_id).of_type(:integer) }

  it{ is_expected.to have_db_index(:company_id) }

  it{ is_expected.to belong_to(:company) }
end
