import { $$, $ } from '../utils/query_selector'
import { getRequiredQuestions } from './question'
import { getCheckboxElements } from './checkbox'
import {
  clearAllCustomValidityMessages,
  setInvalidity,
} from '../utils/form_validity_helpers'

/**
 * checks required fields of a form
 * // TODO: check for compatibility (import, fat arrow function, classList, setCustomValidity)
 * @param {Event} _event
 */
export const checkRequiredFields = _event => {
  // clear all previous validity messages
  clearAllCustomValidityMessages($$('input'))

  const remainingQuestions = getRequiredQuestions({ highlight: true })

  if (remainingQuestions.length) {
    // get all checkboxes from required fieldsets that are yet not checked
    // inspired by https://vyspiansky.github.io/2019/07/13/javascript-at-least-one-checkbox-must-be-selected/
    getCheckboxElements(remainingQuestions).forEach(setInvalidity)
  }
}
