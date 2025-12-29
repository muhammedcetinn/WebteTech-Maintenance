# SEO Checklist - Webtetech Maintenance Mode

## ✅ Tamamlanan SEO Optimizasyonları

### 📱 Meta Tags
- [x] Title tag (default + template)
- [x] Meta description (150-160 karakter, TR/EN)
- [x] Keywords (relevant, 15+ keywords)
- [x] Authors metadata
- [x] Creator & Publisher
- [x] Canonical URL
- [x] Language tags (tr_TR primary, en_US alternate)
- [x] Robots meta (noindex for maintenance)

### 🌐 Open Graph (Facebook, LinkedIn)
- [x] og:type (website)
- [x] og:url
- [x] og:title
- [x] og:description
- [x] og:image (1200x630px)
- [x] og:site_name
- [x] og:locale (tr_TR + en_US)

### 🐦 Twitter Cards
- [x] twitter:card (summary_large_image)
- [x] twitter:title
- [x] twitter:description
- [x] twitter:image (1200x600px)
- [x] twitter:creator
- [x] twitter:site

### 🎨 Icons & Manifest
- [x] favicon.ico
- [x] Icon sizes: 16x16, 32x32, 192x192, 512x512
- [x] Apple touch icon (180x180)
- [x] Safari pinned tab SVG
- [x] site.webmanifest (PWA ready)
- [x] browserconfig.xml (Windows tiles)
- [x] Theme color (#9333ea)
- [x] MS application tile color

### 🤖 Robots & Sitemap
- [x] robots.ts (Next.js 14+ format)
- [x] sitemap.ts (dynamic sitemap)
- [x] Disallow all (maintenance mode)
- [x] Change frequency
- [x] Priority settings
- [x] Multi-language support

### ⚡ Performance & Technical
- [x] MetadataBase URL
- [x] Format detection disabled
- [x] Proper HTML lang attribute
- [x] Dir attribute (ltr)
- [x] suppressHydrationWarning
- [x] Category (technology)

---

## 📋 Eksik İkonlar (Oluşturulması Gereken)

Aşağıdaki ikon dosyalarını tasarımınıza göre oluşturup `/public` klasörüne eklemeniz gerekiyor:

### Gerekli İkon Dosyaları:
```
public/
├── favicon.ico               (16x16, 32x32, 48x48)
├── icon-16x16.png           (16x16)
├── icon-32x32.png           (32x32)
├── icon-192x192.png         (192x192)
├── icon-512x512.png         (512x512)
├── apple-touch-icon.png     (180x180)
├── safari-pinned-tab.svg    (SVG monochrome)
├── mstile-150x150.png       (150x150)
├── og-image.png             (1200x630)
└── twitter-image.png        (1200x600)
```

### İkon Oluşturma Önerileri:

1. **favicon.ico & PNG icons**:
   - Logo'nuzu kare formatta kullanın
   - Arka plan: Şeffaf veya marka renginiz (#9333ea)
   - Format: PNG-8 veya PNG-24 (alfa kanal ile)

2. **og-image.png** (1200x630):
   - Webtetech logosu
   - "Bakım Modunda" metni
   - Gradient background (#9333ea → #3b82f6)
   - Merkezi kompozisyon
   - Metin okunabilir olmalı

3. **twitter-image.png** (1200x600):
   - og-image ile aynı tasarım olabilir
   - Aspect ratio: 2:1

4. **safari-pinned-tab.svg**:
   - Monochrome SVG (tek renk)
   - Logo'nun sadece outline'ı
   - Fill: #9333ea

### Online Araçlar:
- **Favicon Generator**: https://realfavicongenerator.net/
- **OG Image Generator**: https://www.opengraph.xyz/
- **Icon Converter**: https://www.icoconverter.com/
- **SVG Optimizer**: https://jakearchibald.github.io/svgomg/

---

## 🔍 SEO Test & Validation

### Test Araçları:

1. **Google Search Console**
   - URL Inspection Tool
   - Coverage raporu
   - Mobile Usability

2. **Meta Tags Validator**
   - https://metatags.io/
   - Open Graph debugger: https://developers.facebook.com/tools/debug/
   - Twitter Card validator: https://cards-dev.twitter.com/validator

3. **Lighthouse (Chrome DevTools)**
   ```bash
   # Terminal'de çalıştır:
   npm install -g lighthouse
   lighthouse https://www.webtetech.com --view
   ```

4. **PageSpeed Insights**
   - https://pagespeed.web.dev/

5. **Structured Data Testing**
   - https://validator.schema.org/
   - https://search.google.com/test/rich-results

---

## 📊 Bakım Modundan Çıkınca Yapılacaklar

### robots.ts Güncelleme:
```typescript
// src/app/robots.ts
export default function robots(): MetadataRoute.Robots {
  return {
    rules: [
      {
        userAgent: '*',
        allow: '/',
        disallow: ['/admin', '/api/private'],
      },
    ],
    sitemap: 'https://www.webtetech.com/sitemap.xml',
  }
}
```

### Metadata Güncelleme:
```typescript
// src/app/layout.tsx
export const metadata: Metadata = {
  robots: {
    index: true,      // false → true
    follow: true,     // false → true
    nocache: false,   // true → false
    googleBot: {
      index: true,
      follow: true,
    },
  },
}
```

### Sitemap Genişletme:
```typescript
// src/app/sitemap.ts
return [
  { url: `${baseUrl}`, priority: 1 },
  { url: `${baseUrl}/services`, priority: 0.8 },
  { url: `${baseUrl}/about`, priority: 0.8 },
  { url: `${baseUrl}/contact`, priority: 0.7 },
  { url: `${baseUrl}/blog`, priority: 0.9 },
  // ... diğer sayfalar
]
```

---

## 🎯 SEO Performans Hedefleri

- [ ] Google PageSpeed: 90+ (Mobile)
- [ ] Google PageSpeed: 95+ (Desktop)
- [ ] Lighthouse SEO Score: 100
- [ ] Lighthouse Performance: 90+
- [ ] First Contentful Paint: < 1.5s
- [ ] Largest Contentful Paint: < 2.5s
- [ ] Cumulative Layout Shift: < 0.1
- [ ] Time to Interactive: < 3.5s

---

## 📝 Domain Ayarları

### DNS Kayıtları:
```
A     @              [Server IP]
CNAME www            webtetech.com
TXT   @              "v=spf1 include:_spf.google.com ~all"
```

### SSL/HTTPS:
- Let's Encrypt sertifikası (ücretsiz)
- HSTS header aktif
- HTTP → HTTPS redirect

### Canonical URL:
- Tüm sayfalarda canonical tag
- www → non-www veya tersi (bir tanesini seçin)

---

## ✨ Gelişmiş SEO (Opsiyonel)

### Structured Data (JSON-LD):
```typescript
// src/app/layout.tsx veya page.tsx
const jsonLd = {
  '@context': 'https://schema.org',
  '@type': 'Organization',
  name: 'Webtetech',
  url: 'https://www.webtetech.com',
  logo: 'https://www.webtetech.com/logo.png',
  sameAs: [
    'https://twitter.com/webtetech',
    'https://www.linkedin.com/company/webtetech',
    'https://github.com/webtetech',
  ],
  contactPoint: {
    '@type': 'ContactPoint',
    telephone: '+90-555-123-4567',
    contactType: 'Customer Service',
    availableLanguage: ['Turkish', 'English'],
  },
}

// Layout'a ekle:
<script
  type="application/ld+json"
  dangerouslySetInnerHTML={{ __html: JSON.stringify(jsonLd) }}
/>
```

### Analytics:
- Google Analytics 4
- Google Tag Manager
- Microsoft Clarity
- Hotjar (UX analytics)

---

## 🔗 Yararlı Kaynaklar

- [Next.js Metadata API](https://nextjs.org/docs/app/api-reference/functions/generate-metadata)
- [Google Search Central](https://developers.google.com/search)
- [Moz SEO Learning Center](https://moz.com/learn/seo)
- [Ahrefs SEO Checklist](https://ahrefs.com/seo)

---

**Son Güncelleme**: 29 Aralık 2025
**Durum**: ✅ SEO-ready (İkonlar eklendikten sonra 100% complete)
