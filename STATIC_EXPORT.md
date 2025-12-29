# Static Export Deployment Guide

## 📦 Next.js Static Export

Bu proje `output: 'export'` kullanarak tam static HTML/CSS/JS çıktısı üretir.

### Avantajları:
✅ **Sunucu Gereksiz**: Node.js runtime gerekmez
✅ **Hızlı**: Doğrudan Nginx ile serve
✅ **Ucuz Hosting**: Herhangi bir static hosting
✅ **CDN-Ready**: Kolayca CDN'e deploy edilebilir
✅ **Güvenli**: Server-side kod yok

### Dezavantajları:
❌ API Routes kullanılamaz
❌ Server Components sınırlı
❌ ISR/SSR yok
❌ Dynamic routes sınırlı

---

## 🚀 Build & Deploy

### Lokal Build:
```bash
npm run build
# Çıktı: /out klasörü
```

### Nginx Deployment:
```bash
# Sunucuda
cd /var/www/webtetech-maintenance
npm install
npm run build

# Nginx /out klasörünü serve eder
sudo systemctl reload nginx
```

### Alternative Static Hosting:

#### Vercel (Önerilen):
```bash
npm install -g vercel
vercel --prod
```

#### Netlify:
```bash
# Build command: npm run build
# Publish directory: out
```

#### GitHub Pages:
```bash
# .github/workflows/deploy.yml
# Build ve /out klasörünü gh-pages branch'ine push et
```

#### AWS S3 + CloudFront:
```bash
aws s3 sync out/ s3://your-bucket-name --delete
aws cloudfront create-invalidation --distribution-id YOUR_DIST_ID --paths "/*"
```

---

## 📁 Klasör Yapısı

```
/var/www/webtetech-maintenance/
├── out/                    # Build çıktısı (Nginx bunu serve eder)
│   ├── index.html
│   ├── _next/
│   │   └── static/
│   ├── favicon.ico
│   ├── robots.txt
│   └── sitemap.xml
├── src/                    # Kaynak kodlar
├── public/                 # Static dosyalar (out'a kopyalanır)
├── package.json
└── next.config.ts         # output: 'export'
```

---

## 🌐 Nginx Konfigürasyonu

```nginx
server {
    listen 80;
    server_name yourdomain.com;
    
    # Static export root
    root /var/www/webtetech-maintenance/out;
    index index.html;
    
    # SPA fallback
    location / {
        try_files $uri $uri/ $uri.html /index.html;
    }
    
    # Cache static assets
    location ~* \.(jpg|jpeg|png|gif|ico|css|js)$ {
        expires 365d;
        add_header Cache-Control "public, immutable";
    }
}
```

---

## 🔄 CI/CD Pipeline Örneği

### GitHub Actions:
```yaml
# .github/workflows/deploy.yml
name: Deploy Static Site

on:
  push:
    branches: [main]

jobs:
  deploy:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      
      - name: Setup Node.js
        uses: actions/setup-node@v3
        with:
          node-version: '20'
          
      - name: Install dependencies
        run: npm ci
        
      - name: Build static site
        run: npm run build
        
      - name: Deploy to server
        uses: easingthemes/ssh-deploy@main
        env:
          SSH_PRIVATE_KEY: ${{ secrets.SSH_PRIVATE_KEY }}
          REMOTE_HOST: ${{ secrets.REMOTE_HOST }}
          REMOTE_USER: ${{ secrets.REMOTE_USER }}
          SOURCE: "out/"
          TARGET: "/var/www/webtetech-maintenance/out/"
```

---

## 📊 Performance

Static export ile beklenen performans:

- **First Contentful Paint**: < 0.8s
- **Time to Interactive**: < 1.5s
- **Lighthouse Score**: 95-100
- **Bundle Size**: ~200-300 KB (gzipped)

---

## 🔧 Troubleshooting

### Build Hatası:
```bash
# Error: Page /sitemap.xml has an invalid "export" value
# Çözüm: src/app/sitemap.ts'yi sil, public/sitemap.xml kullan
```

### Nginx 404:
```bash
# try_files directive eksik
location / {
    try_files $uri $uri/ $uri.html /index.html;
}
```

### CSS/JS Yüklenmiyor:
```bash
# next.config.ts'de basePath yanlış
# basePath: '' olmalı (static export için)
```

---

## ✅ Checklist

- [x] `next.config.ts`: `output: 'export'`
- [x] `next.config.ts`: `images.unoptimized: true`
- [x] Dynamic routes kaldırıldı (`robots.ts`, `sitemap.ts`)
- [x] Static dosyalar `public/` klasöründe
- [x] Nginx `root` directive doğru (`/out`)
- [x] `try_files` directive var
- [x] Cache headers ayarlandı

🎉 **Static export hazır!**
