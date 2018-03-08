class EmployersController < ApplicationController
  def dashboard
    @employer = current_employer
  end
end