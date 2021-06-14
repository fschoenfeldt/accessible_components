export const $ = (selector, el) => {
  if (!el) {
    el = document
  }
  return el.querySelector(selector)
}
export const $$ = (selector, el) => {
  if (!el) {
    el = document
  }
  return Array.prototype.slice.call(el.querySelectorAll(selector))
}

export default $
