class WelcomeController < ApplicationController

  def index

    require 'rest-client'

    asdf = RestClient.get 'http://hackathon.siim.org/fhir/Patient/siimjoe', { apiKey: '0619a72e-bbf4-4f85-a2b4-c6c2fd2d9cb7' }

    @asdf = JSON.parse asdf

  end
end
