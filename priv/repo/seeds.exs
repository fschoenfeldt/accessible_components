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

# Language Select
AccessibleComponents.Repo.insert!(%AccessibleComponents.Questions.Question{
  title: "Bitte wählen Sie Ihre Sprache",
  type: "language_select",
  required: true,
  answers: [
    %{
      text: "Deutsch"
    },
    %{
      text: "Englisch"
    },
    %{
      text: "Französisch"
    },
    %{
      text: "Spanisch"
    }
  ]
})

# Checkbox Select
AccessibleComponents.Repo.insert!(%AccessibleComponents.Questions.Question{
  title: "Welche Beschwerden haben Sie?",
  type: "complaint_select",
  required: true,
  answers: [
    %{
      text: "Rückenschmerzen"
    },
    %{
      text: "Fieber"
    },
    %{
      text: "Durchfall"
    },
    %{
      text: "Insektenstich"
    },
    %{
      text: "Depressionen"
    },
    %{
      text: "Herzrasen"
    },
    %{
      text: "Erkältung"
    },
    %{
      text: "Verbrennung"
    },
    %{
      text: "Husten"
    },
    %{
      text: "Beinschmerzen"
    }
  ]
})

# Radio Select
AccessibleComponents.Repo.insert!(%AccessibleComponents.Questions.Question{
  title: "Wie haben sich die Symptome über die Zeit verändert?",
  type: "radio_select",
  required: true,
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
  title: "Haben Sie übermäßig viel Kaffe getrunken?",
  type: "radio_select",
  required: true,
  answers: [
    %{
      text: "Ja"
    },
    %{
      text: "Nein"
    }
  ]
})

AccessibleComponents.Repo.insert!(%AccessibleComponents.Questions.Question{
  title: "Sind Herzerkrankungen bekannt in Ihrer Familie?",
  type: "radio_select",
  required: true,
  answers: [
    %{
      text: "Ja"
    },
    %{
      text: "Nein"
    }
  ]
})

AccessibleComponents.Repo.insert!(%AccessibleComponents.Questions.Question{
  title: "Hatten Sie an der entsprechenden Stelle eine Operation?",
  type: "radio_select",
  required: false,
  answers: [
    %{
      text: "Ja"
    },
    %{
      text: "Nein"
    }
  ]
})
