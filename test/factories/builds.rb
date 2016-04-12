FactoryGirl.define do
  factory :build do
    title "MyString"
    content "MyText"
    date_published "2016-04-01"
    published false
    admin_user nil
    slug "MyString"
  end
end
