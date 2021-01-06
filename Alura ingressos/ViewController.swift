//
//  ViewController.swift
//  Alura ingressos
//
//  Created by Lucas Abdel Leitao on 06/01/21.
//  Copyright © 2021 Lucas Abdel Leitao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imagemBanner: UIImageView!
    @IBOutlet var textFields: [UITextField]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.imagemBanner.layer.cornerRadius = 10
        self.imagemBanner.layer.masksToBounds = true
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func botaoComprar(_ sender: UIButton) {
        let textFieldsEstadoPreenchidos = ValidaFormulario().verificaTextFieldsPreenchidos(textFields: textFields)
        
        if textFieldsEstadoPreenchidos{
            let alerta = ValidaFormulario().exibeNotificacaoTextFieldsPreenchidos(titulo: "parabens", mensagem: "compra realizada com sucesso")
            present(alerta,animated: true, completion: nil)
        }else{
            let alerta = ValidaFormulario().exibeNotificacaoTextFieldsPreenchidos(titulo: "atencao", mensagem: "preencha corretamente todos os campos")
            present(alerta,animated: true, completion: nil)
        }
    }
    
}

