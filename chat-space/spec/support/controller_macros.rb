module  ControllerMacros
  def login(user)
    @request.eny["devise.mapping"] = Devise.mappings[:user]
    sign_in user
  end
end
