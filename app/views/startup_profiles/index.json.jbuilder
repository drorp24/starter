json.array!(@startup_profiles) do |startup_profile|
  json.extract! startup_profile, :id, :role
  json.url startup_profile_url(startup_profile, format: :json)
end
