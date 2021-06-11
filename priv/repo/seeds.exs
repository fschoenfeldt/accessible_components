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

# Radio Select
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

AccessibleComponents.Repo.insert!(%AccessibleComponents.Questions.Question{
  title: "Hatten Sie an der entsprechenden Stelle eine Operation?",
  type: "radio_select",
  answers: [
    %{
      text: "Ja"
    },
    %{
      text: "Nein"
    }
  ]
})

# Checkbox Select
AccessibleComponents.Repo.insert!(%AccessibleComponents.Questions.Question{
  title: "Welche Beschwerden haben Sie?",
  type: "multi_select",
  answers: [
    %{
      text: "Rückenschmerzen"
    },
    %{
      text: "Fieber"
    }
  ]
})
