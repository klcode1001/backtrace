require 'test_helper'

class BestAnswersTest < ActionDispatch::IntegrationTest
  setup do
    @note = note = Note.create! body: 'Hello?'
    @comment_1 = note.comments.create! body: 'Hello!'
    @comment_2 = note.comments.create! body: 'Hello!!'
    @comment_3 = note.comments.create! body: 'Hello!!!'
  end

  test "best answer" do
    get root_path
    assert_template 'notes/index'

    get note_path(@note)
    assert_template 'notes/show'

    post best_path comment: @comment_1.id, note_id: @note.id
    assert_redirected_to @note

    assert_equal @comment_1, @note.reload.best_answer.comment
  end
end
