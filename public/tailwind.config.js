module.exports = {
  content: ["./src/**/*.{html,js}"],
  theme: {
    extend: {},
  },
  plugins: [require("@tailwindcss/line-clamp")],
};

module.exports = {
  theme: {
    extend: {},
  },
  variants: {
    extend: {
      scrollBehavior: ["responsive"],
    },
  },
  plugins: [],
};
