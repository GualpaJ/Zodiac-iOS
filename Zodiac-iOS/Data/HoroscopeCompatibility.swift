//
//  HoroscopeCompatibility.swift
//  Zodiac-iOS
//
//  Created by Tardes on 26/5/26.
//

import Foundation

struct HoroscopeCompatibility {
    
    // Diccionario de compatibilidad [signo1: [signo2: resultado]]
    static let compatibility: [String: [String: String]] = [
        
        // ARIES
        "aries": [
            "leo": "🔥 Perfect match! Both fire signs, full of passion and energy!",
            "sagittarius": "🏹 Great adventure duo! Always seeking new experiences!",
            "gemini": "⚡ Exciting but challenging! Opposites attract!",
            "aquarius": "💡 Intellectual spark! Great conversations!",
            "taurus": "🐂 Slow burn, requires patience from both sides",
            "cancer": "🦀 Very different emotional worlds, needs work",
            "libra": "⚖️ Good balance of action and harmony",
            "virgo": "📊 Challenging, different approaches to life",
            "capricorn": "🏔️ Opposites, but can learn from each other",
            "pisces": "🐟 Dreamer vs doer, complicated but interesting",
            "scorpio": "🦂 Intense attraction, powerful but volatile"
        ],
        
        // TAURO
        "taurus": [
            "virgo": "🌍 Earth signs! Stable, practical, perfect match!",
            "capricorn": "🏔️ Power couple! Both value security and success!",
            "cancer": "🦀 Nurturing pair! Great for building a home!",
            "pisces": "🐟 Romantic and stable, beautiful combination!",
            "scorpio": "🦂 Intense passion, but can be possessive",
            "leo": "🦁 Fixed signs, power struggle possible",
            "aquarius": "💨 Very different worlds, challenging",
            "gemini": "💨 Too different, patience needed",
            "libra": "⚖️ Both love beauty, can work well",
            "sagittarius": "🏹 Freedom vs stability, difficult"
        ],
        
        // GÉMINIS
        "gemini": [
            "libra": "⚖️ Air signs! Perfect communication, great fun!",
            "aquarius": "💡 Intellectual pair! Never bored together!",
            "aries": "🔥 Exciting! Keeps things interesting!",
            "leo": "🦁 Social power couple! Love to party!",
            "sagittarius": "🏹 Opposite but complementary, great adventures!",
            "virgo": "📊 Mercury siblings, good intellectual match",
            "cancer": "🦀 Can't handle Gemini's changeability",
            "scorpio": "🦂 Too intense for light-hearted Gemini",
            "taurus": "🐂 Too slow and steady for Gemini",
            "capricorn": "🏔️ Too serious for playful Gemini"
        ],
        
        // CÁNCER
        "cancer": [
            "scorpio": "🦂 Water signs! Deep emotional connection!",
            "pisces": "🐟 Dreamy pair! Very intuitive together!",
            "taurus": "🐂 Stable and caring! Great for family!",
            "virgo": "📊 Nurturing meets practical! Good balance!",
            "capricorn": "🏔️ Opposites, but can complement each other",
            "libra": "⚖️ Needs vs harmony, can be challenging",
            "aries": "🔥 Too aggressive for sensitive Cancer",
            "gemini": "💨 Too flighty for home-loving Cancer",
            "leo": "🦁 Needs too much attention for Cancer",
            "sagittarius": "🏹 Too restless for homebody Cancer"
        ],
        
        // LEO
        "leo": [
            "aries": "🔥 Fire power couple! Passionate and bold!",
            "sagittarius": "🏹 Fun and adventurous! Love to shine together!",
            "libra": "⚖️ Great social pair! Love for luxury!",
            "gemini": "💨 Fun and flirty! Never boring!",
            "scorpio": "🦂 Intense attraction, but power struggles",
            "taurus": "🐂 Fixed signs, clash of wills",
            "capricorn": "🏔️ Too serious for fun-loving Leo",
            "virgo": "📊 Too critical for proud Leo",
            "cancer": "🦀 Leo needs attention, Cancer gives love"
        ],
        
        // VIRGO
        "virgo": [
            "taurus": "🐂 Earth signs! Build solid future together!",
            "capricorn": "🏔️ Ambitious duo! Great work-life balance!",
            "cancer": "🦀 Caring meets practical! Good balance!",
            "scorpio": "🦂 Deep analytical connection!",
            "pisces": "🐟 Opposites attract! Perfect complement!",
            "gemini": "💨 Mercury siblings, good communication",
            "libra": "⚖️ Adjacent signs, can work well",
            "aries": "🔥 Too messy and impulsive for Virgo",
            "leo": "🦁 Too flashy for modest Virgo",
            "sagittarius": "🏹 Too chaotic for organized Virgo"
        ],
        
        // LIBRA
        "libra": [
            "gemini": "💨 Air signs! Perfect communication!",
            "aquarius": "💡 Intellectual match! Social justice duo!",
            "leo": "🦁 Glamorous couple! Love for beauty!",
            "sagittarius": "🏹 Fun and philosophical! Great adventures!",
            "taurus": "🐂 Both love beauty, can work well",
            "scorpio": "🦂 Deep connection, trust issues possible",
            "cancer": "🦀 Too emotional for balanced Libra",
            "capricorn": "🏔️ Too serious for social Libra",
            "aries": "🔥 Exciting but challenging opposites"
        ],
        
        // ESCORPIO
        "scorpio": [
            "cancer": "🦀 Water signs! Deep emotional bond!",
            "pisces": "🐟 Intuitive pair! Very connected!",
            "virgo": "📊 Analytical and deep, great match!",
            "capricorn": "🏔️ Power couple! Both ambitious!",
            "leo": "🦁 Intense attraction, but power struggles",
            "taurus": "🐂 Opposites attract! Very passionate!",
            "gemini": "💨 Too superficial for deep Scorpio",
            "libra": "⚖️ Trust issues may arise",
            "sagittarius": "🏹 Freedom vs intensity, difficult"
        ],
        
        // SAGITARIO
        "sagittarius": [
            "aries": "🔥 Fire signs! Adventure partners!",
            "leo": "🦁 Fun-loving duo! Life of the party!",
            "aquarius": "💡 Freedom lovers! Perfect match!",
            "libra": "⚖️ Social and philosophical! Great talks!",
            "gemini": "💨 Opposite but exciting! Never boring!",
            "cancer": "🦀 Too homebound for wanderer",
            "virgo": "📊 Too structured for free spirit",
            "scorpio": "🦂 Too intense and jealous",
            "capricorn": "🏔️ Work vs play, difficult balance"
        ],
        
        // CAPRICORNIO
        "capricorn": [
            "taurus": "🐂 Earth signs! Stable power couple!",
            "virgo": "📊 Perfect match! Both practical and ambitious!",
            "scorpio": "🦂 Intense and driven! Great partnership!",
            "pisces": "🐟 Complementary opposites! Balance each other!",
            "cancer": "🦀 Emotional needs vs practical focus",
            "leo": "🦁 Work vs play, can be challenging",
            "libra": "⚖️ Too social and indecisive",
            "gemini": "💨 Too flighty for serious Capricorn",
            "aries": "🔥 Impulsive vs patient, difficult"
        ],
        
        // ACUARIO
        "aquarius": [
            "gemini": "💨 Air signs! Intellectual soulmates!",
            "libra": "⚖️ Social justice duo! Perfect harmony!",
            "sagittarius": "🏹 Freedom lovers! Great adventures!",
            "aries": "🔥 Exciting and innovative pair!",
            "leo": "🦁 Opposite but complementary! Power couple!",
            "cancer": "🦀 Too emotional for detached Aquarius",
            "taurus": "🐂 Too conventional for rebel Aquarius",
            "virgo": "📊 Too critical and detailed",
            "scorpio": "🦂 Too intense and possessive",
            "pisces": "🐟 Dreamer and idealist, good match"
        ],
        
        // PISCIS
        "pisces": [
            "cancer": "🦀 Water signs! Deep soul connection!",
            "scorpio": "🦂 Intense and passionate! Perfect match!",
            "taurus": "🐂 Romantic and stable! Beautiful combo!",
            "capricorn": "🏔️ Practical meets dreamy! Great balance!",
            "libra": "⚖️ Both romantic, can work well",
            "virgo": "📊 Opposites attract! Perfect complement!",
            "gemini": "💨 Too logical for emotional Pisces",
            "sagittarius": "🏹 Freedom vs dreams, complicated",
            "leo": "🦁 Needs too much attention",
            "aquarius": "💡 Idealistic match! Change makers!"
        ]
    ]
    
    static func getCompatibility(sign1: String, sign2: String) -> String {
        // Si son el mismo signo
        if sign1 == sign2 {
            return "💯 Perfect match! Same sign, same energy! True soulmates! 💯"
        }
        
        // Buscar compatibilidad
        if let result = compatibility[sign1]?[sign2] {
            return result
        }
        
        if let result = compatibility[sign2]?[sign1] {
            return result
        }
        
        // Si no hay datos específicos
        return "💫 You have potential! Every relationship is unique and special! 💫"
    }
}
