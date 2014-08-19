json.array!(@mentor_profile_academics) do |mentor_profile_academic|
  json.extract! mentor_profile_academic, :id, :title
  json.url mentor_profile_academic_url(mentor_profile_academic, format: :json)
end
