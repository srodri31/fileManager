require "open3"

class ApplicationController < ActionController::Base
    
    def create_file_form
        @message = "Create your files"
    end

    def create_file
        path = "../appContainer/"
        File.write(path + params[:file_name], params[:content], mode: "a")
        redirect_to create_file_form_path
    end

    def index
        path = "../appContainer/"
        stdout, stderr, status = Open3.capture3("ls " + path)
        @files = stdout.split("\n")
    end
        
end

