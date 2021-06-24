import { $$, $ } from '../utils/query_selector'

/**
 * Get required questions and highlight them if wanted
 * @param {Boolean} highlight
 * @returns [HTMLElement]|HTMLElement
 */
export const getRequiredQuestions = ({ highlight = false }) => {
  // get all required fieldsets
  const requiredFieldsets = $$('[data-required="true"]')

  // remove previously set --fillMeOut classes
  requiredFieldsets.forEach(({ classList }) =>
    classList.remove('question--fillMeOut')
  )

  // get fieldsets that are not filled out yet...
  const fieldsetsRemainingToFill = requiredFieldsets.filter(fieldset =>
    $$('input', fieldset).every(({ checked }) => !checked)
  )

  if (highlight) {
    // ...and place border class around them
    fieldsetsRemainingToFill.forEach(({ classList }) =>
      classList.add('question--fillMeOut')
    )
  }

  return fieldsetsRemainingToFill
}
