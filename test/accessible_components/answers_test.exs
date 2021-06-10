defmodule AccessibleComponents.AnswersTest do
  use AccessibleComponents.DataCase

  alias AccessibleComponents.Answers

  describe "answers" do
    alias AccessibleComponents.Answers.Answer

    @valid_attrs %{question_id: 42, text: "some text"}
    @update_attrs %{question_id: 43, text: "some updated text"}
    @invalid_attrs %{question_id: nil, text: nil}

    def answer_fixture(attrs \\ %{}) do
      {:ok, answer} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Answers.create_answer()

      answer
    end

    test "list_answers/0 returns all answers" do
      answer = answer_fixture()
      assert Answers.list_answers() == [answer]
    end

    test "get_answer!/1 returns the answer with given id" do
      answer = answer_fixture()
      assert Answers.get_answer!(answer.id) == answer
    end

    test "create_answer/1 with valid data creates a answer" do
      assert {:ok, %Answer{} = answer} = Answers.create_answer(@valid_attrs)
      assert answer.question_id == 42
      assert answer.text == "some text"
    end

    test "create_answer/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Answers.create_answer(@invalid_attrs)
    end

    test "update_answer/2 with valid data updates the answer" do
      answer = answer_fixture()
      assert {:ok, %Answer{} = answer} = Answers.update_answer(answer, @update_attrs)
      assert answer.question_id == 43
      assert answer.text == "some updated text"
    end

    test "update_answer/2 with invalid data returns error changeset" do
      answer = answer_fixture()
      assert {:error, %Ecto.Changeset{}} = Answers.update_answer(answer, @invalid_attrs)
      assert answer == Answers.get_answer!(answer.id)
    end

    test "delete_answer/1 deletes the answer" do
      answer = answer_fixture()
      assert {:ok, %Answer{}} = Answers.delete_answer(answer)
      assert_raise Ecto.NoResultsError, fn -> Answers.get_answer!(answer.id) end
    end

    test "change_answer/1 returns a answer changeset" do
      answer = answer_fixture()
      assert %Ecto.Changeset{} = Answers.change_answer(answer)
    end
  end
end
