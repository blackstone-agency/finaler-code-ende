/** Static build config for the deployed landing page (index.html).
 *  Mirrors the former Play-CDN inline config. */
module.exports = {
  content: ['./index.html', './app.jsx'],
  theme: {
    extend: {
      fontFamily: { sans: ['Inter', 'system-ui', 'sans-serif'] },
    },
  },
};
