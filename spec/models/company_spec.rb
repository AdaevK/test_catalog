require "rails_helper"

RSpec.describe Company, type: :model do
  it{ is_expected.to have_db_column(:name).of_type(:string) }
  it{ is_expected.to have_db_column(:active).of_type(:boolean) }
end
