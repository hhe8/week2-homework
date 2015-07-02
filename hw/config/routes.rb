Rails.application.routes.draw do
  get "/greet" => 'greetings#greet'
  get "/contact" => 'contacts#contact'
  get "/contact_submitted" => 'contacts#contact_submitted'
  get "/weather" => 'weathers#weather'
  get "/current_condition" => 'weathers#current_condition'
end
