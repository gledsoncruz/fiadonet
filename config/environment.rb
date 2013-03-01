# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Fiadonet::Application.initialize!

Time::DATE_FORMATS[:data_br] = "%d/%m/%Y"
Time::DATE_FORMATS[:dia_semana] = "%A"
Time::DATE_FORMATS[:hora] = "%H:%M horas"
 Time::DATE_FORMATS[:logado] = "%b, %m %Y - %I:%M%p"
