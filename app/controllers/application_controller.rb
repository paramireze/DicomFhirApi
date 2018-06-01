class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  @@apiKey = '0619a72e-bbf4-4f85-a2b4-c6c2fd2d9cb7'

  def get_patient_data(patientName)
    results = RestClient.get 'http://hackathon.siim.org/fhir/Patient/' + patientName, { apiKey:  @@apiKey }
    JSON.parse results
  end
end
