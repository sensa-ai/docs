export default defineAppConfig({
  docus: {
    title: 'SensaAI Docs',
    description: 'Welcome to the SensaAI API Documentation – Your Gateway to Subscribed Data!',
    image: '',
    socials: {
      twitter: 'sensaai_1',
      facebook: 'sensaai1',
      //linkedin: 'sensaai',
      github: 'sensa-ai/docs',
    },
    github: {
      dir: '/content',
      branch: 'main',
      repo: 'docs',
      owner: 'sensa-ai',
      edit: false
    },
    aside: {
      level: 0,
      collapsed: false,
      exclude: []
    },
    main: {
      padded: true,
      fluid: true
    },
    header: {
      logo: true,
      showLinkIcon: true,
      exclude: [],
      fluid: true
    },
    footer: {
      credits: { icon: 'iconamoon:home-bold', text: 'SensaAI', href: 'https://sensaai.com', },
      textLinks: [
        {
          text: 'FAQ',
          href: 'https://sensaai.com/resources/faq',
          target: '_blank',
          rel: 'noopener'
        },
        {
          text: 'Knowledge Center',
          href: 'https://sensaai.com/category/knowledge-base',
          target: '_blank',
          rel: 'noopener'
        },
        {
          text: 'Contact Support',
          href: 'https://sensaai.com/contact',
          target: '_blank',
          rel: 'noopener'
        }
      ],
    }
  }
})
