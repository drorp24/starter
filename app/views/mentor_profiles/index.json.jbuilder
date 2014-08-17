json.array!(@mentor_profiles) do |mentor_profile|
  json.extract! mentor_profile, :id, :title, :profile_id, :profile_type
  json.url mentor_profile_url(mentor_profile, format: :json)
end
