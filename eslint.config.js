const antfu = require('@antfu/eslint-config').default

module.exports= antfu(
  {
    vue: false,
  },
  {
    rules: {
      'import/order': 'error', // Import configuration for `eslint-plugin-import`
      'import/first': 'error',
      'import/newline-after-import': 'error',
      'import/no-duplicates': 'error',
      'react-refresh/only-export-components': 'off',
      'react-hooks/exhaustive-deps': 'off',
    },
  },
)
