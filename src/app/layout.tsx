import type { Metadata } from 'next'
import { Montserrat } from 'next/font/google'
import './globals.css'
import { ThemeProvider } from '@/components/theme-provider'

const montserrat = Montserrat({ 
  subsets: ['latin'],
  variable: '--font-sans',
  weight: ['400', '500', '600', '700', '800', '900'],
})

export const metadata: Metadata = {
  metadataBase: new URL('https://www.webtetech.com'),
  title: {
    default: 'Webtetech - Bakım Modunda | Under Maintenance',
    template: '%s | Webtetech'
  },
  description: 'Webtetech altyapısını güçlendiriyor. Yapay zeka destekli yazılım çözümleri, web ve mobil uygulama geliştirme hizmetlerimiz çok yakında yenilenmiş haliyle sizlerle. We are upgrading our infrastructure to serve you better.',
  keywords: [
    'webtetech',
    'yazılım geliştirme',
    'web development',
    'mobile development',
    'AI solutions',
    'cloud services',
    'yapay zeka',
    'mobil uygulama',
    'web tasarım',
    'software development',
    'react',
    'next.js',
    'node.js',
    'python',
    'flutter',
    'react native'
  ],
  authors: [{ name: 'Webtetech', url: 'https://www.webtetech.com' }],
  creator: 'Webtetech',
  publisher: 'Webtetech',
  formatDetection: {
    email: false,
    address: false,
    telephone: false,
  },
  robots: {
    index: false,
    follow: false,
    nocache: true,
    googleBot: {
      index: false,
      follow: false,
      noimageindex: true,
      'max-video-preview': -1,
      'max-image-preview': 'large',
      'max-snippet': -1,
    },
  },
  openGraph: {
    type: 'website',
    locale: 'tr_TR',
    alternateLocale: ['en_US'],
    url: 'https://www.webtetech.com',
    title: 'Webtetech - Bakım Modunda | Enterprise Software Solutions',
    description: 'Yapay zeka destekli yazılım çözümleri, web ve mobil uygulama geliştirme hizmetlerimiz çok yakında yenilenmiş haliyle sizlerle.',
    siteName: 'Webtetech',
    images: [
      {
        url: '/og-image.png',
        width: 1200,
        height: 630,
        alt: 'Webtetech - Enterprise Software Solutions',
        type: 'image/png',
      },
    ],
  },
  twitter: {
    card: 'summary_large_image',
    title: 'Webtetech - Bakım Modunda',
    description: 'Yapay zeka destekli yazılım çözümleri ile altyapımızı güçlendiriyoruz.',
    creator: '@webtetech',
    site: '@webtetech',
    images: ['/twitter-image.png'],
  },
  icons: {
    icon: [
      { url: '/favicon.ico', sizes: 'any' },
      { url: '/icon-16x16.png', sizes: '16x16', type: 'image/png' },
      { url: '/icon-32x32.png', sizes: '32x32', type: 'image/png' },
      { url: '/icon-192x192.png', sizes: '192x192', type: 'image/png' },
      { url: '/icon-512x512.png', sizes: '512x512', type: 'image/png' },
    ],
    apple: [
      { url: '/apple-touch-icon.png', sizes: '180x180', type: 'image/png' },
    ],
    other: [
      {
        rel: 'mask-icon',
        url: '/safari-pinned-tab.svg',
      },
    ],
  },
  manifest: '/site.webmanifest',
  category: 'technology',
  other: {
    'msapplication-TileColor': '#9333ea',
    'theme-color': '#ffffff',
  },
}

export default function RootLayout({
  children,
}: {
  children: React.ReactNode
}) {
  return (
    <html lang="tr" suppressHydrationWarning dir="ltr">
      <body className={montserrat.variable}>
        <ThemeProvider
          attribute="class"
          defaultTheme="system"
          enableSystem
          disableTransitionOnChange
        >
          {children}
        </ThemeProvider>
      </body>
    </html>
  )
}