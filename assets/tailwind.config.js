module.exports = {
  // mode: 'jit',
  theme: {
    extend: {
      typography: theme => ({
        DEFAULT: {
          css: {
            color: theme('colors.red.800'),

            // ...
          },
        },
      }),
    },
  },
  purge: [
    '../lib/**/*.eex',
    '../lib/**/*.leex',
    '../lib/**/*_view.ex',
    '../lib/**/views/*.ex',
  ],
  plugins: [
    /* require('@tailwindcss/forms'), */ require('@tailwindcss/typography'),
  ],
}
