json.array!(@general_profiles) do |general_profile|
  json.extract! general_profile, :id, :user_id, :title
  json.url general_profile_url(general_profile, format: :json)
end
