import { $$, $ } from '../utils/query_selector'

export const checkRequiredFields = event => {
  // get all required fieldsets
  const requiredFieldsets = $$('[data-required="true"]')

  // remove previously set --fillMeOut class
  requiredFieldsets.forEach(({ classList }) =>
    classList.remove('question--fillMeOut')
  )

  // get fieldsets that are not filled out yet...
  const fieldsetsRemainingToFill = requiredFieldsets.filter(fieldset =>
    $$('input', fieldset).every(({ checked }) => !checked)
  )

  // ...and place border class around them
  fieldsetsRemainingToFill.forEach(({ classList }) =>
    classList.add('question--fillMeOut')
  )

  if (!!fieldsetsRemainingToFill.length) {
    event.preventDefault()
    console.debug('fieldsets remaining to fill: ', fieldsetsRemainingToFill)
  }
}
