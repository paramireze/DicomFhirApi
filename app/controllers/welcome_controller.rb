class WelcomeController < ApplicationController

  def index

    require 'rest-client'

    patientName = "siimjoe"
    @patientList = get_all_patients
    @patientData = get_patient_data(patientName)
    @patientDiagnosticReportList = get_patient_diagnostic_reports(patientName)

  end
end
