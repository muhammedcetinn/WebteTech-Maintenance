"use client"

import { useState } from 'react'
import { Button } from '@/components/ui/button'
import { 
  Sheet, 
  SheetContent, 
  SheetDescription, 
  SheetHeader, 
  SheetTitle, 
  SheetTrigger 
} from '@/components/ui/sheet'
import { 
  Dialog, 
  DialogContent, 
  DialogDescription, 
  DialogHeader, 
  DialogTitle, 
  DialogTrigger 
} from '@/components/ui/dialog'
import { 
  DropdownMenu, 
  DropdownMenuContent, 
  DropdownMenuItem, 
  DropdownMenuTrigger 
} from '@/components/ui/dropdown-menu'
import { Moon, Sun, Info, MessageCircle, Send, Languages, Wrench, Sparkles, Mail, ArrowRight, Code2, Smartphone, Brain, Cloud, MonitorSmartphone, Database, Cpu } from 'lucide-react'
import { useTheme } from 'next-themes'
import { type Locale, getTranslations } from '@/lib/i18n'
import Image from 'next/image'

export default function MaintenancePage() {
  const { theme, setTheme } = useTheme()
  const [locale, setLocale] = useState<Locale>('tr')
  const t = getTranslations(locale)

  return (
    <div className="min-h-screen h-screen flex flex-col items-center justify-center p-3 sm:p-4 relative overflow-hidden" style={{ background: 'linear-gradient(135deg, var(--color-background-start), var(--color-background-end))' }}>
      {/* Modern mesh pattern overlay */}
      <div className="absolute inset-0 opacity-[0.015] dark:opacity-[0.025]" 
        style={{
          backgroundImage: `radial-gradient(circle at 25% 25%, currentColor 2px, transparent 2px),
                           radial-gradient(circle at 75% 75%, currentColor 2px, transparent 2px)`,
          backgroundSize: '60px 60px',
          backgroundPosition: '0 0, 30px 30px'
        }}>
      </div>

      {/* Premium floating orbs with blur */}
      <div className="absolute top-[15%] left-[10%] w-96 h-96 rounded-full opacity-20 dark:opacity-10 blur-3xl animate-float-slow" 
        style={{ background: 'radial-gradient(circle, var(--color-primary), transparent)' }}></div>
      <div className="absolute bottom-[20%] right-[15%] w-[32rem] h-[32rem] rounded-full opacity-15 dark:opacity-8 blur-3xl animate-float-slower" 
        style={{ background: 'radial-gradient(circle, #60a5fa, transparent)' }}></div>
      <div className="absolute top-[50%] right-[5%] w-80 h-80 rounded-full opacity-12 dark:opacity-6 blur-3xl animate-float-slow" 
        style={{ background: 'radial-gradient(circle, #a78bfa, transparent)', animationDelay: '2s' }}></div>
      <div className="absolute bottom-[10%] left-[20%] w-72 h-72 rounded-full opacity-10 dark:opacity-5 blur-3xl animate-float-slower" 
        style={{ background: 'radial-gradient(circle, #34d399, transparent)', animationDelay: '3s' }}></div>

      {/* Header - Controls with Glassmorphism */}
      <div className="absolute top-4 sm:top-6 right-4 sm:right-6 flex items-center gap-2 z-20">
        <DropdownMenu>
          <DropdownMenuTrigger asChild>
            <Button 
              size="icon" 
              className="h-12 w-12 rounded-2xl shadow-xl border backdrop-blur-sm hover:scale-105 transition-all duration-300"
              style={{ backgroundColor: 'var(--color-primary)', color: '#f5f5f5', borderColor: 'color-mix(in srgb, white 15%, transparent)' }}
            >
              <Languages className="h-5 w-5" />
            </Button>
          </DropdownMenuTrigger>
          <DropdownMenuContent align="end" className="min-w-40 rounded-2xl border shadow-2xl backdrop-blur-xl" style={{ backgroundColor: 'color-mix(in srgb, var(--color-card) 85%, transparent)', borderColor: 'var(--color-border)' }}>
            <DropdownMenuItem onClick={() => setLocale('tr')} className="cursor-pointer rounded-xl py-3 text-base font-medium hover:scale-[1.02] transition-transform">
              🇹🇷 Türkçe
            </DropdownMenuItem>
            <DropdownMenuItem onClick={() => setLocale('en')} className="cursor-pointer rounded-xl py-3 text-base font-medium hover:scale-[1.02] transition-transform">
              🇬🇧 English
            </DropdownMenuItem>
          </DropdownMenuContent>
        </DropdownMenu>

        <Button
          size="icon"
          onClick={() => setTheme(theme === 'dark' ? 'light' : 'dark')}
          className="h-12 w-12 rounded-2xl shadow-xl border backdrop-blur-sm hover:scale-105 transition-all duration-300"
          style={{ backgroundColor: 'var(--color-secondary)', color: 'var(--color-foreground)', borderColor: 'var(--color-border)' }}
        >
          <Sun className="h-5 w-5 rotate-0 scale-100 transition-transform duration-500 dark:-rotate-90 dark:scale-0" />
          <Moon className="absolute h-5 w-5 rotate-90 scale-0 transition-transform duration-500 dark:rotate-0 dark:scale-100" />
        </Button>
      </div>

      {/* Logo with Glassmorphism */}
      <div className="absolute top-3 sm:top-6 left-3 sm:left-6 z-20 animate-fade-in">
        <div className="group flex items-center gap-2 sm:gap-3 px-3 sm:px-7 py-2 sm:py-4 rounded-xl sm:rounded-2xl shadow-2xl border-2 backdrop-blur-xl hover:scale-105 hover:shadow-[0_20px_50px_-10px_rgba(147,51,234,0.3)] transition-all duration-300" 
          style={{ 
            backgroundColor: 'light-dark(rgba(255, 255, 255, 0.95), rgba(26, 26, 26, 0.95))', 
            borderColor: 'light-dark(rgba(147, 51, 234, 0.2), rgba(147, 51, 234, 0.4))'
          }}>
          <div className="relative w-6 h-6 sm:w-9 sm:h-9 group-hover:rotate-12 transition-transform duration-300">
            <Image 
              src="/logo.png" 
              alt="Webtetech" 
              width={36} 
              height={36}
              className="object-contain drop-shadow-lg"
              priority
            />
          </div>
          <span className="text-sm sm:text-lg font-extrabold tracking-tight bg-clip-text text-transparent" 
            style={{ backgroundImage: 'linear-gradient(135deg, var(--color-primary) 0%, #8b5cf6 100%)' }}>
            Webtetech
          </span>
        </div>
      </div>

      {/* Main Content */}
      <div className="max-w-5xl mx-auto text-center space-y-4 sm:space-y-8 z-10 relative animate-fade-in-up px-3 sm:px-2">
        {/* Premium Icon */}
        <div className="flex justify-center">
          <div className="relative group">
            {/* Multi-layer Glow effect */}
            <div className="absolute inset-0 w-20 h-20 sm:w-32 sm:h-32 rounded-full opacity-40 group-hover:opacity-60 transition-opacity duration-500 blur-3xl" 
              style={{ background: 'radial-gradient(circle, var(--color-primary), transparent)' }}></div>
            <div className="absolute inset-0 w-20 h-20 sm:w-32 sm:h-32 rounded-full opacity-30 group-hover:opacity-50 transition-opacity duration-700 blur-2xl animate-pulse" 
              style={{ background: 'radial-gradient(circle, #8b5cf6, transparent)' }}></div>
            
            {/* Main Icon */}
            <div className="relative w-20 h-20 sm:w-32 sm:h-32 rounded-full flex items-center justify-center shadow-2xl transform transition-all duration-500 group-hover:scale-110 group-hover:rotate-6" 
              style={{ 
                background: 'linear-gradient(135deg, var(--color-primary) 0%, #8b5cf6 50%, #3b82f6 100%)',
                boxShadow: '0 25px 50px -12px rgba(147, 51, 234, 0.5), inset 0 -2px 10px rgba(255, 255, 255, 0.2)'
              }}>
              <Wrench className="w-10 h-10 sm:w-16 sm:h-16 drop-shadow-2xl" style={{ color: '#f5f5f5' }} />
            </div>
            
            {/* Animated Badge */}
            <div className="absolute -top-1 -right-1 sm:-top-2 sm:-right-2 w-8 h-8 sm:w-11 sm:h-11 rounded-full flex items-center justify-center shadow-2xl animate-bounce-slow border-2 sm:border-3" 
              style={{ 
                background: 'linear-gradient(135deg, #fbbf24 0%, #f59e0b 100%)',
                borderColor: 'light-dark(rgba(255, 255, 255, 0.9), rgba(0, 0, 0, 0.3))',
                boxShadow: '0 10px 30px -5px rgba(245, 158, 11, 0.6)'
              }}>
              <Sparkles className="w-4 h-4 sm:w-5 sm:h-5 drop-shadow-lg" style={{ color: '#f5f5f5' }} />
            </div>
          </div>
        </div>

        {/* Title & Description */}
        <div className="space-y-3 sm:space-y-5">
          <div className="group inline-flex items-center gap-2 sm:gap-2.5 px-4 sm:px-6 py-2 sm:py-2.5 rounded-full animate-slide-down shadow-xl border-2 backdrop-blur-sm hover:scale-105 transition-all duration-300" 
            style={{ 
              backgroundColor: 'light-dark(rgba(147, 51, 234, 0.12), rgba(147, 51, 234, 0.15))', 
              borderColor: 'light-dark(rgba(147, 51, 234, 0.4), rgba(147, 51, 234, 0.6))',
              boxShadow: '0 10px 30px -10px rgba(147, 51, 234, 0.4)'
            }}>
            <Sparkles className="w-3.5 h-3.5 sm:w-4 sm:h-4 animate-spin-slow group-hover:rotate-180 transition-transform duration-500" style={{ color: 'var(--color-primary)' }} />
            <span className="text-xs sm:text-sm font-bold tracking-wide" style={{ color: 'var(--color-primary)' }}>{t.estimatedTime}</span>
          </div>
          
          <h1 className="relative text-3xl sm:text-5xl md:text-6xl lg:text-7xl font-extrabold tracking-tight leading-tight animate-slide-up px-2 sm:px-4" 
            style={{ animationDelay: '0.1s', letterSpacing: '-0.02em' }}>
            <span className="relative z-10" style={{ color: 'var(--color-foreground)' }}>
              {t.title}
            </span>
            <div className="absolute inset-0 blur-2xl opacity-30" 
              style={{ background: 'linear-gradient(90deg, var(--color-primary) 0%, #8b5cf6 50%, #3b82f6 100%)' }} />
          </h1>
          
          <div className="relative inline-block animate-slide-up px-2" style={{ animationDelay: '0.2s' }}>
            <div className="absolute inset-0 blur-xl opacity-40" 
              style={{ background: 'linear-gradient(90deg, var(--color-primary) 0%, #8b5cf6 50%, #3b82f6 100%)' }} />
            <p className="relative text-base sm:text-xl md:text-2xl lg:text-3xl font-extrabold bg-clip-text text-transparent" 
              style={{ backgroundImage: 'linear-gradient(90deg, var(--color-primary) 0%, #8b5cf6 50%, #3b82f6 100%)' }}>
              {t.subtitle}
            </p>
          </div>
          
          <p className="text-xs sm:text-base md:text-lg lg:text-xl max-w-2xl mx-auto leading-relaxed animate-slide-up px-3 sm:px-4 font-medium" 
            style={{ animationDelay: '0.3s', color: 'var(--color-muted-foreground)' }}>
            {t.description}
          </p>
        </div>

        {/* Premium Action Buttons */}
        <div className="flex flex-col sm:flex-row items-center justify-center gap-2.5 sm:gap-3 pt-2 sm:pt-3 animate-slide-up px-4" style={{ animationDelay: '0.4s' }}>
          <Dialog>
            <DialogTrigger asChild>
              <Button 
                size="lg" 
                className="group relative w-full sm:w-auto gap-2.5 px-7 py-6 text-sm sm:text-base rounded-2xl shadow-2xl hover:shadow-[0_20px_60px_-15px_rgba(147,51,234,0.6)] hover:scale-110 transition-all duration-300 font-bold border-2 overflow-hidden"
                style={{ 
                  background: 'linear-gradient(135deg, var(--color-primary) 0%, #8b5cf6 100%)',
                  color: '#f5f5f5',
                  borderColor: 'rgba(255, 255, 255, 0.2)'
                }}
              >
                <div className="absolute inset-0 bg-gradient-to-r from-transparent via-white/20 to-transparent translate-x-[-200%] group-hover:translate-x-[200%] transition-transform duration-1000" />
                <Info className="w-5 h-5 relative z-10 group-hover:rotate-12 transition-transform duration-300" />
                <span className="relative z-10">{t.about}</span>
              </Button>
            </DialogTrigger>
            <DialogContent className="max-w-[95vw] lg:max-w-7xl max-h-[90vh] overflow-y-auto shadow-2xl border rounded-3xl p-6 sm:p-8 lg:p-12 scrollbar-thin scrollbar-thumb-rounded scrollbar-track-rounded" 
              style={{ 
                backgroundColor: 'light-dark(#ffffff, #1a1a1a)',
                borderColor: 'var(--color-border)',
                scrollbarWidth: 'thin',
                scrollbarColor: 'var(--color-primary) transparent'
              }}>
              <DialogHeader className="space-y-4 sm:space-y-6 pb-6 sm:pb-8 border-b" style={{ borderColor: 'var(--color-border)' }}>
                <DialogTitle className="text-2xl sm:text-3xl lg:text-4xl font-extrabold flex items-center gap-3 sm:gap-4 break-words" style={{ color: 'var(--color-foreground)' }}>
                  <div className="w-12 h-12 sm:w-14 sm:h-14 lg:w-16 lg:h-16 rounded-2xl sm:rounded-3xl bg-linear-to-br from-purple-500 to-purple-600 flex items-center justify-center shadow-xl">
                    <Info className="w-6 h-6 sm:w-7 sm:h-7 lg:w-8 lg:h-8" style={{ color: '#f5f5f5' }} />
                  </div>
                  {t.aboutTitle}
                </DialogTitle>
                <DialogDescription className="text-base sm:text-lg lg:text-xl leading-relaxed break-words" style={{ color: 'var(--color-muted-foreground)' }}>
                  {t.aboutContent}
                </DialogDescription>
              </DialogHeader>

              {/* Services Section */}
              <div className="mt-6 sm:mt-8 lg:mt-10 space-y-4 sm:space-y-6 lg:space-y-8">
                <div className="flex items-center gap-3 sm:gap-4">
                  <div className="w-10 h-10 sm:w-12 sm:h-12 lg:w-14 lg:h-14 rounded-xl sm:rounded-2xl bg-linear-to-br from-blue-500 to-blue-600 flex items-center justify-center shadow-lg">
                    <Sparkles className="w-5 h-5 sm:w-6 sm:h-6 lg:w-7 lg:h-7" style={{ color: '#f5f5f5' }} />
                  </div>
                  <div>
                    <h3 className="text-xl sm:text-2xl lg:text-3xl font-bold" style={{ color: 'var(--color-foreground)' }}>{t.ourServices}</h3>
                    <p className="text-xs sm:text-sm lg:text-base" style={{ color: 'var(--color-muted-foreground)' }}>{t.servicesSubtitle}</p>
                  </div>
                </div>
                
                <div className="grid grid-cols-1 lg:grid-cols-2 gap-4 sm:gap-5 lg:gap-6">
                  {/* Web Development */}
                  <div className="group p-4 sm:p-5 lg:p-7 rounded-2xl lg:rounded-3xl border-2 transition-all duration-300 hover:scale-[1.02] hover:shadow-xl"
                    style={{ 
                      backgroundColor: 'light-dark(#fafafa, #222222)',
                      borderColor: 'color-mix(in srgb, var(--color-primary) 30%, transparent)' 
                    }}>
                    <div className="flex items-start gap-3 sm:gap-4 lg:gap-5">
                      <div className="w-12 h-12 sm:w-14 sm:h-14 lg:w-16 lg:h-16 rounded-xl sm:rounded-2xl bg-linear-to-br from-blue-400 to-blue-600 flex items-center justify-center shrink-0 shadow-lg group-hover:scale-105 transition-all duration-300">
                        <Code2 className="w-6 h-6 sm:w-7 sm:h-7 lg:w-8 lg:h-8" style={{ color: '#f5f5f5' }} />
                      </div>
                      <div className="flex-1 min-w-0">
                        <h4 className="text-base sm:text-lg lg:text-xl font-bold mb-2 lg:mb-3 break-words" style={{ color: 'var(--color-foreground)' }}>
                          {t.services.webDev.title}
                        </h4>
                        <p className="text-sm sm:text-base lg:text-lg leading-relaxed break-words" style={{ color: 'var(--color-muted-foreground)' }}>
                          {t.services.webDev.description}
                        </p>
                      </div>
                    </div>
                  </div>

                  {/* Mobile Development */}
                  <div className="group p-4 sm:p-5 lg:p-7 rounded-2xl lg:rounded-3xl border-2 transition-all duration-300 hover:scale-[1.02] hover:shadow-xl"
                    style={{ 
                      backgroundColor: 'light-dark(#fafafa, #222222)',
                      borderColor: 'color-mix(in srgb, #22c55e 30%, transparent)' 
                    }}>
                    <div className="flex items-start gap-3 sm:gap-4 lg:gap-5">
                      <div className="w-12 h-12 sm:w-14 sm:h-14 lg:w-16 lg:h-16 rounded-xl sm:rounded-2xl bg-linear-to-br from-green-400 to-green-600 flex items-center justify-center shrink-0 shadow-lg group-hover:scale-105 transition-all duration-300">
                        <Smartphone className="w-6 h-6 sm:w-7 sm:h-7 lg:w-8 lg:h-8" style={{ color: '#f5f5f5' }} />
                      </div>
                      <div className="flex-1 min-w-0">
                        <h4 className="text-base sm:text-lg lg:text-xl font-bold mb-2 lg:mb-3 break-words" style={{ color: 'var(--color-foreground)' }}>
                          {t.services.mobileDev.title}
                        </h4>
                        <p className="text-sm sm:text-base lg:text-lg leading-relaxed break-words" style={{ color: 'var(--color-muted-foreground)' }}>
                          {t.services.mobileDev.description}
                        </p>
                      </div>
                    </div>
                  </div>

                  {/* AI Solutions */}
                  <div className="group p-4 sm:p-5 lg:p-7 rounded-2xl lg:rounded-3xl border-2 transition-all duration-300 hover:scale-[1.02] hover:shadow-xl"
                    style={{ 
                      backgroundColor: 'light-dark(#fafafa, #222222)',
                      borderColor: 'color-mix(in srgb, #a855f7 30%, transparent)' 
                    }}>
                    <div className="flex items-start gap-3 sm:gap-4 lg:gap-5">
                      <div className="w-12 h-12 sm:w-14 sm:h-14 lg:w-16 lg:h-16 rounded-xl sm:rounded-2xl bg-linear-to-br from-purple-400 to-purple-600 flex items-center justify-center shrink-0 shadow-lg group-hover:scale-105 transition-all duration-300">
                        <Brain className="w-6 h-6 sm:w-7 sm:h-7 lg:w-8 lg:h-8" style={{ color: '#f5f5f5' }} />
                      </div>
                      <div className="flex-1 min-w-0">
                        <h4 className="text-base sm:text-lg lg:text-xl font-bold mb-2 lg:mb-3 break-words" style={{ color: 'var(--color-foreground)' }}>
                          {t.services.aiSolutions.title}
                        </h4>
                        <p className="text-sm sm:text-base lg:text-lg leading-relaxed break-words" style={{ color: 'var(--color-muted-foreground)' }}>
                          {t.services.aiSolutions.description}
                        </p>
                      </div>
                    </div>
                  </div>

                  {/* Cloud Services */}
                  <div className="group p-4 sm:p-5 lg:p-7 rounded-2xl lg:rounded-3xl border-2 transition-all duration-300 hover:scale-[1.02] hover:shadow-xl"
                    style={{ 
                      backgroundColor: 'light-dark(#fafafa, #222222)',
                      borderColor: 'color-mix(in srgb, #f59e0b 30%, transparent)' 
                    }}>
                    <div className="flex items-start gap-3 sm:gap-4 lg:gap-5">
                      <div className="w-12 h-12 sm:w-14 sm:h-14 lg:w-16 lg:h-16 rounded-xl sm:rounded-2xl bg-linear-to-br from-orange-400 to-orange-600 flex items-center justify-center shrink-0 shadow-lg group-hover:scale-105 transition-all duration-300">
                        <Cloud className="w-6 h-6 sm:w-7 sm:h-7 lg:w-8 lg:h-8" style={{ color: '#f5f5f5' }} />
                      </div>
                      <div className="flex-1 min-w-0">
                        <h4 className="text-base sm:text-lg lg:text-xl font-bold mb-2 lg:mb-3 break-words" style={{ color: 'var(--color-foreground)' }}>
                          {t.services.cloudServices.title}
                        </h4>
                        <p className="text-sm sm:text-base lg:text-lg leading-relaxed break-words" style={{ color: 'var(--color-muted-foreground)' }}>
                          {t.services.cloudServices.description}
                        </p>
                      </div>
                    </div>
                  </div>
                </div>
              </div>

              {/* Tech Stack Section */}
              <div className="mt-8 sm:mt-10 lg:mt-12 space-y-4 sm:space-y-6 lg:space-y-8 pt-6 sm:pt-8 lg:pt-10 border-t" style={{ borderColor: 'var(--color-border)' }}>
                <div className="flex items-center gap-3 sm:gap-4">
                  <div className="w-10 h-10 sm:w-12 sm:h-12 lg:w-14 lg:h-14 rounded-xl sm:rounded-2xl bg-linear-to-br from-indigo-500 to-indigo-600 flex items-center justify-center shadow-lg">
                    <Cpu className="w-5 h-5 sm:w-6 sm:h-6 lg:w-7 lg:h-7" style={{ color: '#f5f5f5' }} />
                  </div>
                  <div>
                    <h3 className="text-xl sm:text-2xl lg:text-3xl font-bold" style={{ color: 'var(--color-foreground)' }}>{t.technologies}</h3>
                    <p className="text-xs sm:text-sm lg:text-base" style={{ color: 'var(--color-muted-foreground)' }}>{t.techStackSubtitle}</p>
                  </div>
                </div>
                
                <div className="grid grid-cols-2 sm:grid-cols-3 lg:grid-cols-5 gap-3 sm:gap-4 lg:gap-5">
                  {/* Frontend */}
                  <div className="group p-4 sm:p-5 lg:p-6 rounded-xl sm:rounded-2xl border-2 text-center transition-all duration-300 hover:scale-105 hover:shadow-lg"
                    style={{ backgroundColor: 'light-dark(#fafafa, #222222)', borderColor: 'color-mix(in srgb, var(--color-primary) 30%, transparent)' }}>
                    <MonitorSmartphone className="w-8 h-8 sm:w-10 sm:h-10 lg:w-12 lg:h-12 mx-auto mb-2 sm:mb-3 group-hover:scale-110 transition-transform duration-300" style={{ color: 'var(--color-primary)' }} />
                    <div className="text-sm sm:text-base lg:text-lg font-bold mb-1" style={{ color: 'var(--color-foreground)' }}>{t.techStack.frontend}</div>
                    <div className="text-xs sm:text-sm" style={{ color: 'var(--color-muted-foreground)' }}>React, Next.js, Vue</div>
                  </div>

                  {/* Backend */}
                  <div className="group p-4 sm:p-5 lg:p-6 rounded-xl sm:rounded-2xl border-2 text-center transition-all duration-300 hover:scale-105 hover:shadow-lg"
                    style={{ backgroundColor: 'light-dark(#fafafa, #222222)', borderColor: 'color-mix(in srgb, #22c55e 30%, transparent)' }}>
                    <Database className="w-8 h-8 sm:w-10 sm:h-10 lg:w-12 lg:h-12 mx-auto mb-2 sm:mb-3 group-hover:scale-110 transition-transform duration-300" style={{ color: '#22c55e' }} />
                    <div className="text-sm sm:text-base lg:text-lg font-bold mb-1" style={{ color: 'var(--color-foreground)' }}>{t.techStack.backend}</div>
                    <div className="text-xs sm:text-sm" style={{ color: 'var(--color-muted-foreground)' }}>Node.js, Python, .NET</div>
                  </div>

                  {/* Mobile */}
                  <div className="group p-4 sm:p-5 lg:p-6 rounded-xl sm:rounded-2xl border-2 text-center transition-all duration-300 hover:scale-105 hover:shadow-lg"
                    style={{ backgroundColor: 'light-dark(#fafafa, #222222)', borderColor: 'color-mix(in srgb, #3b82f6 30%, transparent)' }}>
                    <Smartphone className="w-8 h-8 sm:w-10 sm:h-10 lg:w-12 lg:h-12 mx-auto mb-2 sm:mb-3 group-hover:scale-110 transition-transform duration-300" style={{ color: '#3b82f6' }} />
                    <div className="text-sm sm:text-base lg:text-lg font-bold mb-1" style={{ color: 'var(--color-foreground)' }}>{t.techStack.mobile}</div>
                    <div className="text-xs sm:text-sm" style={{ color: 'var(--color-muted-foreground)' }}>React Native, Flutter</div>
                  </div>

                  {/* AI/ML */}
                  <div className="group p-4 sm:p-5 lg:p-6 rounded-xl sm:rounded-2xl border-2 text-center transition-all duration-300 hover:scale-105 hover:shadow-lg"
                    style={{ backgroundColor: 'light-dark(#fafafa, #222222)', borderColor: 'color-mix(in srgb, #a855f7 30%, transparent)' }}>
                    <Brain className="w-8 h-8 sm:w-10 sm:h-10 lg:w-12 lg:h-12 mx-auto mb-2 sm:mb-3 group-hover:scale-110 transition-transform duration-300" style={{ color: '#a855f7' }} />
                    <div className="text-sm sm:text-base lg:text-lg font-bold mb-1" style={{ color: 'var(--color-foreground)' }}>{t.techStack.aiml}</div>
                    <div className="text-xs sm:text-sm" style={{ color: 'var(--color-muted-foreground)' }}>TensorFlow, PyTorch</div>
                  </div>

                  {/* Cloud & DevOps */}
                  <div className="group p-4 sm:p-5 lg:p-6 rounded-xl sm:rounded-2xl border-2 text-center transition-all duration-300 hover:scale-105 hover:shadow-lg col-span-2 sm:col-span-3 lg:col-span-1"
                    style={{ backgroundColor: 'light-dark(#fafafa, #222222)', borderColor: 'color-mix(in srgb, #f59e0b 30%, transparent)' }}>
                    <Cloud className="w-8 h-8 sm:w-10 sm:h-10 lg:w-12 lg:h-12 mx-auto mb-2 sm:mb-3 group-hover:scale-110 transition-transform duration-300" style={{ color: '#f59e0b' }} />
                    <div className="text-sm sm:text-base lg:text-lg font-bold mb-1" style={{ color: 'var(--color-foreground)' }}>{t.techStack.cloud}</div>
                    <div className="text-xs sm:text-sm" style={{ color: 'var(--color-muted-foreground)' }}>AWS, Azure, Docker</div>
                  </div>
                </div>
              </div>
            </DialogContent>
          </Dialog>

          <Sheet>
            <SheetTrigger asChild>
              <Button 
                size="lg" 
                className="group relative w-full sm:w-auto gap-2 sm:gap-2.5 px-5 sm:px-7 py-5 sm:py-6 text-sm sm:text-base rounded-2xl shadow-2xl hover:shadow-[0_20px_60px_-15px_rgba(59,130,246,0.5)] hover:scale-110 transition-all duration-300 font-bold border-2 overflow-hidden" 
                style={{ 
                  background: 'linear-gradient(135deg, #3b82f6 0%, #2563eb 100%)',
                  color: '#f5f5f5',
                  borderColor: 'rgba(255, 255, 255, 0.2)'
                }}
              >
                <div className="absolute inset-0 bg-gradient-to-r from-transparent via-white/20 to-transparent translate-x-[-200%] group-hover:translate-x-[200%] transition-transform duration-1000" />
                <MessageCircle className="w-4 h-4 sm:w-5 sm:h-5 relative z-10 group-hover:scale-110 transition-transform duration-300" />
                <span className="relative z-10">{t.contact}</span>
                <ArrowRight className="w-3.5 h-3.5 sm:w-4 sm:h-4 relative z-10 group-hover:translate-x-2 transition-transform duration-300" />
              </Button>
            </SheetTrigger>
            <SheetContent className="w-full sm:max-w-lg border-l p-6 sm:p-8 overflow-y-auto" 
              style={{ 
                backgroundColor: 'light-dark(#ffffff, #1a1a1a)',
                borderColor: 'var(--color-border)',
                scrollbarWidth: 'thin',
                scrollbarColor: 'var(--color-primary) transparent'
              }}>
              <SheetHeader className="space-y-4">
                <SheetTitle className="text-2xl sm:text-3xl font-bold" style={{ color: 'var(--color-foreground)' }}>
                  {t.contactTitle}
                </SheetTitle>
                <SheetDescription className="text-base sm:text-lg leading-relaxed" style={{ color: 'var(--color-muted-foreground)' }}>
                  {t.contactDescription}
                </SheetDescription>
              </SheetHeader>
              <div className="mt-8 sm:mt-10 space-y-4">
                <a
                  href="https://wa.me/905551234567"
                  target="_blank"
                  rel="noopener noreferrer"
                  className="flex items-center gap-4 p-4 sm:p-5 rounded-2xl border-2 shadow-lg hover:shadow-xl hover:scale-[1.02] transition-all duration-300 group" 
                  style={{ backgroundColor: 'light-dark(#fafafa, #222222)', borderColor: 'color-mix(in srgb, #22c55e 30%, transparent)' }}
                >
                  <div className="w-14 h-14 rounded-2xl bg-linear-to-br from-green-400 to-green-600 flex items-center justify-center shrink-0 shadow-lg group-hover:scale-110 group-hover:rotate-6 transition-all duration-300">
                    <MessageCircle className="w-7 h-7" style={{ color: '#f5f5f5' }} />
                  </div>
                  <div className="flex-1 text-left">
                    <div className="font-bold text-base sm:text-lg" style={{ color: 'var(--color-foreground)' }}>{t.whatsapp}</div>
                    <div className="text-sm sm:text-base font-medium" style={{ color: 'var(--color-muted-foreground)' }}>+90 555 123 45 67</div>
                  </div>
                  <ArrowRight className="w-5 h-5 sm:w-6 sm:h-6 text-green-600 dark:text-green-400 group-hover:translate-x-2 transition-transform duration-300" />
                </a>

                <a
                  href="https://t.me/webtetech"
                  target="_blank"
                  rel="noopener noreferrer"
                  className="flex items-center gap-4 p-4 sm:p-5 rounded-2xl border-2 shadow-lg hover:shadow-xl hover:scale-[1.02] transition-all duration-300 group" 
                  style={{ backgroundColor: 'light-dark(#fafafa, #222222)', borderColor: 'color-mix(in srgb, #3b82f6 30%, transparent)' }}
                >
                  <div className="w-14 h-14 rounded-2xl bg-linear-to-br from-blue-400 to-blue-600 flex items-center justify-center shrink-0 shadow-lg group-hover:scale-110 group-hover:rotate-6 transition-all duration-300">
                    <Send className="w-7 h-7" style={{ color: '#f5f5f5' }} />
                  </div>
                  <div className="flex-1 text-left">
                    <div className="font-bold text-base sm:text-lg" style={{ color: 'var(--color-foreground)' }}>{t.telegram}</div>
                    <div className="text-sm sm:text-base font-medium" style={{ color: 'var(--color-muted-foreground)' }}>@webtetech</div>
                  </div>
                  <ArrowRight className="w-5 h-5 sm:w-6 sm:h-6 text-blue-600 dark:text-blue-400 group-hover:translate-x-2 transition-transform duration-300" />
                </a>

                <a
                  href="mailto:info@webtetech.com"
                  className="flex items-center gap-4 p-4 sm:p-5 rounded-2xl border-2 shadow-lg hover:shadow-xl hover:scale-[1.02] transition-all duration-300 group" 
                  style={{ backgroundColor: 'light-dark(#fafafa, #222222)', borderColor: 'color-mix(in srgb, #a855f7 30%, transparent)' }}
                >
                  <div className="w-14 h-14 rounded-2xl bg-linear-to-br from-purple-400 to-purple-600 flex items-center justify-center shrink-0 shadow-lg group-hover:scale-110 group-hover:rotate-6 transition-all duration-300">
                    <Mail className="w-7 h-7" style={{ color: '#f5f5f5' }} />
                  </div>
                  <div className="flex-1 text-left">
                    <div className="font-bold text-base sm:text-lg" style={{ color: 'var(--color-foreground)' }}>{t.email}</div>
                    <div className="text-sm sm:text-base font-medium" style={{ color: 'var(--color-muted-foreground)' }}>info@webtetech.com</div>
                  </div>
                  <ArrowRight className="w-5 h-5 sm:w-6 sm:h-6 text-purple-600 dark:text-purple-400 group-hover:translate-x-2 transition-transform duration-300" />
                </a>
              </div>
            </SheetContent>
          </Sheet>
        </div>

        {/* Premium Footer Badge */}
        <div className="pt-3 sm:pt-6 animate-fade-in" style={{ animationDelay: '0.5s' }}>
          <div className="inline-flex items-center gap-2 sm:gap-2.5 px-4 sm:px-5 py-2 sm:py-2.5 rounded-full shadow-2xl border-2 backdrop-blur-xl" 
            style={{ backgroundColor: 'color-mix(in srgb, var(--color-muted) 80%, transparent)', borderColor: 'var(--color-border)' }}>
            <Sparkles className="w-3.5 h-3.5 sm:w-4 sm:h-4 animate-pulse" style={{ color: 'var(--color-primary)' }} />
            <span className="text-xs sm:text-sm font-bold tracking-wide" style={{ color: 'var(--color-foreground)' }}>
              {t.backSoon}
            </span>
          </div>
        </div>
      </div>
    </div>
  )
}