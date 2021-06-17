defmodule AccessibleComponentsWeb.QuestionController do
  use AccessibleComponentsWeb, :controller

  alias AccessibleComponents.Questions

  def submit_answer(conn, %{"id" => id}) do
    questions = Questions.list_questions()

    current_question_index =
      questions
      |> Enum.find_index(fn question ->
        question.id === id
      end)

    case questions |> Enum.at(current_question_index + 1) do
      %{id: next_question_id} ->
        redirect(conn, to: "/question/#{next_question_id}")

      _ ->
        # TODO: write this route
        redirect(conn, to: "/finished")
    end
  end
end
