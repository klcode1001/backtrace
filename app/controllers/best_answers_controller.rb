class BestAnswersController < ApplicationController
  def best
    note = Note.find(params[:note_id])
    bestanswer = note.build_best_answer(comment: params[:comment])
    bestanswer.save
    redirect_to (:back), notice: 'hogehoge'
  end
end
