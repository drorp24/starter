json.array!(@mentor_profiles) do |mentor_profile|
  json.extract! mentor_profile, :id, :title, :mentor_profile_id, :mentor_profile_type
  json.url mentor_profile_url(mentor_profile, format: :json)
end
