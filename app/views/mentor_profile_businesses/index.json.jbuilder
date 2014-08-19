json.array!(@mentor_profile_businesses) do |mentor_profile_business|
  json.extract! mentor_profile_business, :id, :title
  json.url mentor_profile_business_url(mentor_profile_business, format: :json)
end
