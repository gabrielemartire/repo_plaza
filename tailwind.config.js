const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
content: [
  './app/**/*.{erb,html,haml,slim,rb,js,jsx,ts,tsx}',
  './public/**/*.html'
],
  theme: {
    extend: {
      fontFamily: {
        sans: ['Inter var', ...defaultTheme.fontFamily.sans],
      },
    },
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/aspect-ratio'),
    require('@tailwindcss/typography'),
    require('@tailwindcss/container-queries'),
  ]
}