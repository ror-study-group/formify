class QuestionnaireResponsesController < ApplicationController
  def new
    @questions = I18n.t(:questions)
  end

  def show
    @questionnaire_response = QuestionnaireResponse.find(params[:id])
  end

  def create
    @questionnaire_response = QuestionnaireResponse.new(questionnaire_response_params)

    if @questionnaire_response.save
      redirect_to @questionnaire_response
    else
      render :new
    end
  end

  private

  def questionnaire_response_params
    params.require(:questionnaire_response).permit(data: I18n.t(:questions).map { |k,v| k })
  end

end
