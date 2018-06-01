class WelcomeController < ApplicationController

  def index

    require 'rest-client'


    patientData = get_patient_data("siimjoe")
    @resourceType = patientData["resourceType"]
    @id = patientData["id"]
    @patient = patientData["re"]

    @patientData = patientData
  end
end
