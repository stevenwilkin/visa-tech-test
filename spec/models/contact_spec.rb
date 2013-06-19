require "spec_helper"

describe Contact do
  it { should validate_presence_of(:first_name) }
  it { should validate_presence_of(:last_name) }
  it { should validate_presence_of(:mobile) }

  it { should validate_presence_of(:email) }
  it { should_not allow_value("bar.com").for(:email) }
  it { should allow_value("foo@bar.com").for(:email) }

  it "enforces unique email addresses" do
    Contact.create(first_name: "Foo", last_name: "Bar", mobile: "123456789", email: "foo@bar.com")
    Contact.new.should validate_uniqueness_of(:email)
  end

end
