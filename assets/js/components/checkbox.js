import { $$, $ } from '../utils/query_selector'
import { getRequiredQuestions } from './question'

/**
 * Returns checkbox elements in the given HTMLElement
 * @param {[HTMLElement]} questions
 * @returns [HTMLElement]
 */
export const getCheckboxElements = questions => {
  if (questions === undefined) {
    questions = getRequiredQuestions()
  }

  return questions.flatMap(fieldset => $$('input[type="checkbox"]', fieldset))
}
