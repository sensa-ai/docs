export default defineNuxtConfig({

  content: {
    highlight: {
      preload: ['py'],
    }
  },
  // https://github.com/nuxt-themes/docus
  extends: ['@nuxt-themes/docus', '@nuxt-themes/typography'],

  modules: [
    // https://github.com/nuxt-modules/plausible
    '@nuxtjs/plausible',
    // https://github.com/nuxt/devtools
    '@nuxt/devtools'
  ],
  css: ['@/assets/css/main.css'],
  runtimeConfig: {
    // The private keys which are only available within server-side
    apiSecret: '',
    // Keys within public, will be also exposed to the client-side
    public: {
      domain: "http://localhost",
      graphQlApiReferencePath: '/graphql_api_reference',
      graphIQlPath: '/graphiql',
    },
    app: {
      // baseURL: '/docs/',
      // buildAssetsDir: "/_nuxt/",
    },

  },




  // Have tried all different setups in nginx to make it work but issue is that file imports within files does not get the baseUrl added. Accessible correctly on localhost:{$PORT} if not adding baseURL
})
