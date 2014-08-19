json.array!(@professional_profiles) do |professional_profile|
  json.extract! professional_profile, :id, :user_id, :position
  json.url professional_profile_url(professional_profile, format: :json)
end
