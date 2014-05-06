class CreateQuestionnaireResponses < ActiveRecord::Migration
  def change
    create_table :questionnaire_responses do |t|
      t.hstore :data

      t.timestamps
    end
  end
end
