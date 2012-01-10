require 'spec_helper'

describe ProjectsController do
  it "displays the error for missing project" do
    get :show, :id => "not-here"
    response.should redirect_to projects_path
    message = "Project you are looking for is not found!"
    flash[:alert].should eql(message)
  end

end
