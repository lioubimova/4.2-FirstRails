class WelcomeController < ApplicationController

def index
render :text => "Welcome!"
end

def students_name
render :text => "Welcome, #{params['students_name']}!"
end

def lorem_standart

lipsum_wanted = params['standart']

if lipsum_wanted == "dsjgfllfkd"
  our_ipsum = "не понимаю"
elsif lipsum_wanted == "278347834845"
  our_ipsum = "не хочу"
elsif params['standart'] =~ /\p{Cyrillic}/
  our_ipsum = "наконец"
else
  our_ipsum = "Зыд ан мюндй ныкэжчятатябюз "

end

render :text => our_ipsum
end
end
