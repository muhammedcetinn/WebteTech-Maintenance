export type Locale = 'tr' | 'en';

export const translations = {
  tr: {
    title: 'Bakım Modunda',
    subtitle: 'Altyapımızı Güçlendiriyoruz',
    description: 'Yapay zeka destekli yeni sistemimizi hazırlıyoruz. Daha güçlü ve hızlı bir platform ile çok yakında karşınızda olacağız.',
    about: 'Hakkımızda',
    contact: 'İletişim',
    aboutTitle: 'Biz Kimiz?',
    aboutContent: 'Teknoloji ve yapay zeka odaklı çözümler geliştiren bir yazılım firmasıyız. Modern altyapılar ve AI teknolojileri kullanarak işletmelere değer katan, ölçeklenebilir ürünler sunuyoruz. Müşterilerimize en iyi deneyimi sunmak için sürekli kendimizi geliştiriyoruz.',
    contactTitle: 'Bize Ulaşın',
    contactDescription: 'Sorularınız veya önerileriniz için:',
    whatsapp: 'WhatsApp',
    telegram: 'Telegram',
    email: 'E-posta',
    close: 'Kapat',
    backSoon: 'Çok yakında dönüyoruz!',
    estimatedTime: 'Tahmini süre: Birkaç hafta',
    
    // New sections
    ourServices: 'Hizmetlerimiz',
    servicesSubtitle: 'Ne Yapıyoruz?',
    technologies: 'Teknolojilerimiz',
    techStackSubtitle: 'Kullandığımız Teknolojiler',
    
    services: {
      webDev: {
        title: 'Web Geliştirme',
        description: 'Modern, hızlı ve güvenli web uygulamaları',
      },
      mobileDev: {
        title: 'Mobil Uygulama',
        description: 'iOS ve Android için native ve hybrid çözümler',
      },
      aiSolutions: {
        title: 'AI Çözümleri',
        description: 'Yapay zeka destekli akıllı sistemler',
      },
      cloudServices: {
        title: 'Cloud Hizmetleri',
        description: 'Ölçeklenebilir bulut altyapı ve deployment',
      },
    },
    
    techStack: {
      frontend: 'Frontend',
      backend: 'Backend',
      mobile: 'Mobile',
      aiml: 'AI/ML',
      cloud: 'Cloud & DevOps',
    },
  },
  en: {
    title: 'Under Maintenance',
    subtitle: 'Upgrading Our Infrastructure',
    description: 'We are preparing our new AI-powered system. We will be back very soon with a more powerful and faster platform.',
    about: 'About Us',
    contact: 'Contact',
    aboutTitle: 'Who We Are?',
    aboutContent: 'We are a software company focused on technology and artificial intelligence solutions. We offer scalable products that add value to businesses using modern infrastructure and AI technologies. We continuously improve ourselves to provide the best experience to our customers.',
    contactTitle: 'Get in Touch',
    contactDescription: 'For your questions or suggestions:',
    whatsapp: 'WhatsApp',
    telegram: 'Telegram',
    email: 'Email',
    close: 'Close',
    backSoon: 'We will be back soon!',
    estimatedTime: 'Estimated time: A few weeks',
    
    // New sections
    ourServices: 'Our Services',
    servicesSubtitle: 'What We Do?',
    technologies: 'Our Technologies',
    techStackSubtitle: 'Tech Stack We Use',
    
    services: {
      webDev: {
        title: 'Web Development',
        description: 'Modern, fast and secure web applications',
      },
      mobileDev: {
        title: 'Mobile Apps',
        description: 'Native and hybrid solutions for iOS & Android',
      },
      aiSolutions: {
        title: 'AI Solutions',
        description: 'AI-powered intelligent systems',
      },
      cloudServices: {
        title: 'Cloud Services',
        description: 'Scalable cloud infrastructure and deployment',
      },
    },
    
    techStack: {
      frontend: 'Frontend',
      backend: 'Backend',
      mobile: 'Mobile',
      aiml: 'AI/ML',
      cloud: 'Cloud & DevOps',
    },
  },
};

export function getTranslations(locale: Locale) {
  return translations[locale];
}