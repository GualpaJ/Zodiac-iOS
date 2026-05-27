//
//  Horoscope.swift
//  Zodiac-iOS
//
//  Created by Tardes on 25/5/26.
//

import UIKit

struct Horoscope {
    let id: String
    let name: String
    let dates: String
    let description: String
    
    func getImage() -> UIImage {
        return UIImage(named: id)!
    }
    
    
    static private let list: [Horoscope] = [
        Horoscope(id: "aries", name: "Aries", dates: "21 March - 19 April", description: "Aries are brave, energetic and passionate people. They like to take initiative and face challenges. They are natural leaders with a competitive and adventurous spirit."),
        Horoscope(id: "taurus", name: "Taurus", dates: "20 April - 20 May", description: "Taurus are reliable, patient and practical people. They love stability and comfort. They are loyal and persistent, with a strong appreciation for good food, art and nature."),
        Horoscope(id: "gemini", name: "Gemini", dates: "21 May - 20 June", description: "Gemini are curious, adaptable and communicative people. They love learning new things and socializing. They are versatile and witty, but sometimes can be indecisive."),
        Horoscope(id: "cancer", name: "Cancer", dates: "21 June - 22 July", description: "Cancer are caring, intuitive and protective people. They value family and home above all. They are emotionally deep and have a great ability to care for others."),
        Horoscope(id: "leo", name: "Leo", dates: "23 July - 22 August", description: "Leo are creative, confident and generous people. They love being the center of attention and have big hearts. They are charismatic leaders who inspire others with their energy and passion."),
        Horoscope(id: "virgo", name: "Virgo", dates: "23 August - 22 September", description: "Virgo are analytical, meticulous and helpful people. They pay attention to details and seek perfection. They are practical and efficient, always willing to help others."),
        Horoscope(id: "libra", name: "Libra", dates: "23 September - 22 October", description: "Libra are diplomatic, fair and sociable people. They seek balance and harmony in everything. They are romantic and appreciate beauty, art and fair relationships."),
        Horoscope(id: "scorpio", name: "Scorpio", dates: "23 October - 21 November", description: "Scorpio are intense, passionate and mysterious people. They are very loyal but can also be jealous. They have great willpower and a deep capacity for personal transformation."),
        Horoscope(id: "sagittarius", name: "Sagittarius", dates: "22 November - 21 December", description: "Sagittarius are optimistic, adventurous and philosophical people. They love traveling and exploring new cultures. They are honest and direct, always seeking truth and meaning in life."),
        Horoscope(id: "capricorn", name: "Capricorn", dates: "22 December - 19 January", description: "Capricorn are disciplined, responsible and ambitious people. They are hardworking and persevering, always focused on their goals. They value tradition and long-term success."),
        Horoscope(id: "aquarius", name: "Aquarius", dates: "20 January - 18 February", description: "Aquarius are innovative, independent and humanitarian people. They like to think outside the box and fight for social causes. They are original and value their freedom above all."),
        Horoscope(id: "pisces", name: "Pisces", dates: "19 February - 20 March", description: "Pisces are compassionate, artistic and spiritual people. They are very empathetic and can feel others' emotions. They are dreamy and creative, with great imagination.")
    ]
    
    static func getAll() -> [Horoscope] {
        return list
    }
        
}
