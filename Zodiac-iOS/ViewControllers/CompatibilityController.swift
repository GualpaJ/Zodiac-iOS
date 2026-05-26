//
//  CompatibilityController.swift
//  Zodiac-iOS
//
//  Created by Tardes on 26/5/26.
//

import UIKit

class CompatibilityViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var informationLabel: UILabel!
    @IBOutlet weak var sign1ImageView: UIImageView!
    @IBOutlet weak var sign2ImageView: UIImageView!
    @IBOutlet weak var sign1NameLabel: UILabel!
    @IBOutlet weak var sign2NameLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    
    let signs = Horoscope.getAll()
    var selectedSign1: Horoscope?
    var selectedSign2: Horoscope?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Configurar informationLabel
        informationLabel.text = "Discover the romantic compatibility between two zodiac signs."
        informationLabel.numberOfLines = 0
        informationLabel.textAlignment = .center
        
        // Configurar resultLabel
        resultLabel.numberOfLines = 0
        resultLabel.textAlignment = .center
        
        // Configurar tap gestures en las imágenes
        let tap1 = UITapGestureRecognizer(target: self, action: #selector(selectSign1))
        sign1ImageView.addGestureRecognizer(tap1)
        sign1ImageView.isUserInteractionEnabled = true
        
        let tap2 = UITapGestureRecognizer(target: self, action: #selector(selectSign2))
        sign2ImageView.addGestureRecognizer(tap2)
        sign2ImageView.isUserInteractionEnabled = true
        
        // Valores por defecto
        selectedSign1 = signs.first
        selectedSign2 = signs.last
        
        // Mostrar los signos iniciales
        updateImagesAndNames()
    }
    
    // MARK: - Selectores de Signos
    @objc func selectSign1() {
        showSignPicker { [weak self] selectedSign in
            self?.selectedSign1 = selectedSign
            self?.updateImagesAndNames()
        }
    }
    
    @objc func selectSign2() {
        showSignPicker { [weak self] selectedSign in
            self?.selectedSign2 = selectedSign
            self?.updateImagesAndNames()
        }
    }
    
    // MARK: - Mostrar selector de signos
    func showSignPicker(completion: @escaping (Horoscope) -> Void) {
        let alert = UIAlertController(title: "Select Zodiac Sign",
                                      message: "Choose a sign to check compatibility",
                                      preferredStyle: .actionSheet)
        
        for sign in signs {
            alert.addAction(UIAlertAction(title: sign.name, style: .default) { _ in
                completion(sign)
            })
        }
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel))
        
        // Para iPad
        if let popover = alert.popoverPresentationController {
            popover.sourceView = self.view
            popover.sourceRect = CGRect(x: self.view.bounds.midX, y: self.view.bounds.midY, width: 0, height: 0)
        }
        
        present(alert, animated: true)
    }
    
    // MARK: - Actualizar Imágenes y Nombres (sin calcular resultado)
    func updateImagesAndNames() {
        guard let sign1 = selectedSign1, let sign2 = selectedSign2 else { return }
        
        // Actualizar imágenes y nombres
        sign1ImageView.image = sign1.getImage()
        sign2ImageView.image = sign2.getImage()
        sign1NameLabel.text = sign1.name
        sign2NameLabel.text = sign2.name
        
        // Limpiar resultado cuando se cambian los signos
        resultLabel.text = "Tap 'Check Compatibility' to see the result"
    }
    
    // MARK: - Botón Calcular Compatibilidad
    @IBAction func buttonCalculateCompatibility(_ sender: Any) {
        calculateAndShowResult()
    }
    
    // MARK: - Calcular y mostrar resultado
    func calculateAndShowResult() {
        guard let sign1 = selectedSign1, let sign2 = selectedSign2 else {
            resultLabel.text = "Please select both zodiac signs"
            return
        }
        
        // Calcular compatibilidad
        let compatibilityText = HoroscopeCompatibility.getCompatibility(sign1: sign1.id, sign2: sign2.id)
        let percentage = calculatePercentage(sign1: sign1.id, sign2: sign2.id)
        
        // Mostrar resultado en el label
        resultLabel.text = """
        \(sign1.name) 💕 \(sign2.name)
        
        Compatibility: \(percentage)%
        
        \(compatibilityText)
        """
    }
    
    // MARK: - Calcular porcentaje
    func calculatePercentage(sign1: String, sign2: String) -> Int {
        if sign1 == sign2 {
            return 100
        }
        
        let text = HoroscopeCompatibility.getCompatibility(sign1: sign1, sign2: sign2)
        
        if text.contains("Perfect match") {
            return 95 + Int.random(in: 0...5)
        } else if text.contains("Great") || text.contains("Perfect") {
            return 85 + Int.random(in: 0...9)
        } else if text.contains("Good") || text.contains("beautiful") {
            return 70 + Int.random(in: 0...14)
        } else if text.contains("work well") {
            return 60 + Int.random(in: 0...9)
        } else if text.contains("challenging") {
            return 40 + Int.random(in: 0...19)
        } else {
            return 50 + Int.random(in: 0...30)
        }
    }
}
