/** @type {import('tailwindcss').Config} */
module.exports = {
    content: ['./{lib,web}/**/*.dart', './{lib,web}/**/*.html'],
    theme: {
        extend: {},
    },
    plugins: [
        require("daisyui")
    ],
}