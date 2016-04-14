FactoryGirl.define do
  factory :post do
    category nil
    title "MyString"
    content "MyText"
    teaser "MyText"
    slug "MyString"
    published_on "2016-04-13"
    published false
    admin_user nil
    article_image "MyString"
  end
end
