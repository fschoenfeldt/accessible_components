import { $$, $ } from '../utils/query_selector'

export const checkRequiredFields = () => {
  // get all required fieldsets
  const requiredFieldsets = $$('[data-required="true"]')

  // get fieldsets that are not filled out yet
  const fieldsetsRemainingToFill = requiredFieldsets.filter(fieldset => {
    // TODO: This doesn't work either
    // fieldset.classList.value = 'question'

    const answerOptions = $$('input', fieldset)
    const isFilledOut = answerOptions.some(({ checked }) => !checked)
    return isFilledOut
  })

  // clear out previous hints
  // TODO: this doesn't work
  requiredFieldsets.map(el => {
    el.classList.remove('question--fillMeOut')
  })

  // add border class
  fieldsetsRemainingToFill.forEach(el => {
    el.classList.add('question--fillMeOut')
  })

  fieldsetsRemainingToFill |> console.log
}
