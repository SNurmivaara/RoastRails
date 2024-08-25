class ApplicationController < ActionController::Base
  include IndexCounter
  before_action :set_counter
end
