//
//  ValidaFormulario.swift
//  Alura ingressos
//
//  Created by Lucas Abdel Leitao on 06/01/21.
//  Copyright © 2021 Lucas Abdel Leitao. All rights reserved.
//

import UIKit

class ValidaFormulario: NSObject {
    
    func verificaTextFieldsPreenchidos(textFields: Array<UITextField>) -> Bool{
        for textField in textFields{
            if textField.text == ""{
                return false
            }
        }
        return true
    }
    func exibeNotificacaoTextFieldsPreenchidos(titulo:String, mensagem:String) -> UIAlertController{
        let notificacao = UIAlertController(title: titulo, message: mensagem, preferredStyle: .alert)
        let botao = UIAlertAction(title: "Ok", style: .default, handler: nil)
        notificacao.addAction(botao)
        
        return notificacao
    }
}
