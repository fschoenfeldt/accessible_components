import { $$, $ } from '../utils/query_selector'

export const checkRequiredFields = () => {
  // get all required fieldsets
  const requiredFieldsets = $$('[data-required="true"]')

  // remove previously set --fillMeOut class
  requiredFieldsets.forEach(({ classList }) =>
    classList.remove('question--fillMeOut')
  )

  // get fieldsets that are not filled out yet
  // and place border class around them
  const _fieldsetsRemainingToFill = requiredFieldsets
    .filter(fieldset => $$('input', fieldset).every(({ checked }) => !checked))
    .forEach(({ classList }) => classList.add('question--fillMeOut'))
}
