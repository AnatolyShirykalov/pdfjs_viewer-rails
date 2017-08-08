module PdfjsViewer
  class ApplicationController < ActionController::Base
    before_action :allow_iframe

    private

    def allow_iframe
      response.headers['X-Frame-Options'] = "ALLOWALL"
    end
  end
end
