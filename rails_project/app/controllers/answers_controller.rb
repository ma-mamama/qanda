class AnswersController < ApplicationController
  # 回答の登録
  def create
    @question = Question.find(params[:question_id])
    @question.answers.create(answer_params)
    redirect_to question_path(@question)
  end

  # 回答の削除
  def destroy
    @question = Question.find(params[:question_id])
    @answer = @question.answers.find(params[:id])
    @answer.destroy
    redirect_to @question, status: :see_other
  end

  # 回答にいいね
  def add_good
    answer = Answer.find(params[:id])
    good_incremented = answer.good + 1
    answer.update(good: good_incremented)
    render turbo_stream: turbo_stream.replace(
      "answer_#{answer.id}",
      partial: 'questions/answer',
      locals: { question_id: params[:question_id], answer: answer }
    )
  rescue StandardError
    redirect_to request.referer
  end

  # ベストアンサーを登録する
  def add_bestanswer
    @question = Question.find(params[:question_id])

    @question.update(bestanswer_id: params[:id])
    @question.save
    redirect_to question_path(@question), status: :see_other
  rescue StandardError => e
    redirect_to request.referer, alert: e.message
  end

  private

  def answer_params
    params.require(:answer).permit(:name, :content)
  end
end
