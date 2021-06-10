# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     AccessibleComponents.Repo.insert!(%AccessibleComponents.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

AccessibleComponents.Repo.insert!(%AccessibleComponents.Questions.Question{
  title: "Wie haben sich die Symptome über die Zeit verändert?",
  type: "radio_select",
  answers: [
    %{
      text: "Die Symptome haben sich verbessert"
    },
    %{
      text: "Die Symptome sind gleich geblieben"
    },
    %{
      text: "Die Symptome haben sich verschlechtert"
    }
  ]
})
