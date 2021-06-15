/**
 * @module form
 */

import { $$, $ } from '../utils/query_selector'

/**
 * sets invadility message of the given element
 * @param {HTMLElement} elem element to put message on
 * @param {String|undefined} message message to put on, falls back to checkbox message
 * @returns
 */
const setInvalidity = (elem, message) =>
  elem.setCustomValidity(
    message ? message : 'Wählen Sie mindestens eine der Optionen aus.'
  )

/**
 * Clear customValidity of the given elment
 * @param {HTMLElement} elem
 */
const clearInvalidity = elem => elem.setCustomValidity('')

/**
 * Clear out custom validity messages (`setCustomValidity`) of the given element(s)
 * @param {[HTMLElement]|HTMLElement} possiblyMultipleElements
 */
const clearAllCustomValidityMessages = possiblyMultipleElements => {
  if (Array.isArray(possiblyMultipleElements)) {
    possiblyMultipleElements.forEach(elem => clearInvalidity(elem))
  } else {
    clearInvalidity(possiblyMultipleElements)
  }
}

/**
 * checks required fields of a form
 * @param {Event} _event
 */
export const checkRequiredFields = _event => {
  // clear all previous validity messages (// HACK: This is expensive as it runs thorugh all `input` elements)
  clearAllCustomValidityMessages($$('input'))

  // TODO: refactor me into a question.js
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

  // ...and place border class around them
  fieldsetsRemainingToFill.forEach(({ classList }) =>
    classList.add('question--fillMeOut')
  )
  // TO DO END

  if (!!fieldsetsRemainingToFill.length) {
    // TODO: refactor me into a checkbox.js
    // get all checkboxes from required fieldsets that are yet not checked
    const checkboxesNotChecked = fieldsetsRemainingToFill.flatMap(fieldset =>
      $$('input[type="checkbox"]', fieldset)
    )

    // inspired by https://vyspiansky.github.io/2019/07/13/javascript-at-least-one-checkbox-must-be-selected/
    checkboxesNotChecked.forEach(checkbox => setInvalidity(checkbox))
    // TO DO END
  }
}
