  def show_result_message(test_passage)
    test_passage.successfully_completed? ? 'completed successfully' : 'failed'
  end

  def set_result_color(test_passage)
    test_passage.successfully_completed? ? 'success' : 'fail'
  end
  