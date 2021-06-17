/**
 * sets invadility message of the given element
 * @param {HTMLElement} elem element to put message on
 * @param {String|undefined} message message to put on, falls back to checkbox message
 * @returns
 */
export const setInvalidity = (elem, message) =>
  elem.setCustomValidity(
    message ? message : 'Wählen Sie mindestens eine der Optionen aus.'
  )

/**
 * Clear customValidity of the given elment
 * @param {HTMLElement} elem
 */
export const clearInvalidity = elem => elem.setCustomValidity('')

/**
 * Clear out custom validity messages (`setCustomValidity`) of the given element(s)
 * @param {[HTMLElement]|HTMLElement} possiblyMultipleElements
 */
export const clearAllCustomValidityMessages = possiblyMultipleElements => {
  if (Array.isArray(possiblyMultipleElements)) {
    possiblyMultipleElements.forEach(elem => clearInvalidity(elem))
  } else {
    clearInvalidity(possiblyMultipleElements)
  }
}
