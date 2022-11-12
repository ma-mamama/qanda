class AnswersController < ApplicationController
    #回答の登録
    def create
        @question = Question.find(params[:question_id])
        @question.answers.create(answer_params)
        redirect_to question_path(@question)
    end
    
    #回答の削除
    def destroy
        @question = Question.find(params[:question_id])
        @answer = @question.answers.find(params[:id])
        @answer.destroy
        redirect_to @question, status: :see_other
    end

    #回答にいいね
    def add_good
        answer = Answer.find(params[:id])
        answer.increment!(:good, 1)
        
        render turbo_stream: turbo_stream.replace(
            "answer_#{answer.id}",
            partial: 'questions/answer',
            locals: { question_id: params[:question_id], answer: answer }
        )
    end
    
    private
    def answer_params
        params.require(:answer).permit(:name, :content)
    end
end
