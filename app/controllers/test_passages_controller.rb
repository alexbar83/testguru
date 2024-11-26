class TestPassagesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_test_passage

  def show; end

  def result; end

  def update
    @test_passage.accept!(params[:answer_ids])

    if @test_passage.completed?
      TestsMailer.completed_test(@test_passage).deliver_now
      redirect_to result_test_passage_path(@test_passage)
    else
      render :show
    end
  end

  def gist
    service = GistQuestionService.new(@test_passage.current_question)
    response = service.call

    gist_url = response.html_url
    gist_link = view_context.link_to(gist_url, gist_url, target: :blank)

    flash_message = if service.status_ok?
                      create_gist!(gist_url)
                      { notice: t('.success', url: gist_link) }
                    else
                      { alert: t('.failed') }
                    end

    redirect_to @test_passage, flash_message

  private

  def set_test_passage
    @test_passage = TestPassage.find(params[:id])
  end
end
