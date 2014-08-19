desc "Generate basic user with some profiles - user@example.com"
task :generate_basic_user do
  if User.find_by_email("user@example.com").nil?
    user = User.create(:email => "user@example.com", :password => "Password10", :password_confirmation => "Password10")
    GeneralProfile.create(:user_id => user.id, :title => "user@example.com - General Profile")
    ProfessionalProfile.create(:user_id => user.id, :position => "CEO - Professional Profile")
    UserProfile.create!(:user_id => user.id, :profile => StartupProfile.create(:role => "CEO"))
    UserProfile.create!(:user_id => user.id, :profile => MentorProfile.create(:title => "The great CEO", :mentor_profile => MentorProfileAcademic.create(:title => "Doctor")))
    puts "User has been created successfully"
  else
    puts "The user record is already exist"
  end

end