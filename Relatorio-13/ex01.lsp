(defstruct erva
  nome
  preco-por-grama
  toxicidade)

(defun classifica-erva (erva)
  (cond ((>= (erva-toxicidade erva) 7) "veneno")
        ((>= (erva-toxicidade erva) 4) "use com cuidado")
        (t "segura")))

(defun preco-da-dose (erva gramas)
  (* (erva-preco-por-grama erva) gramas))

(defun descreve-erva (erva)
  (format nil "~a - R$ ~,2f por grama - ~a"
          (erva-nome erva)
          (erva-preco-por-grama erva)
          (classifica-erva erva)))

(defun aviso (erva)
  (if (>= (erva-toxicidade erva) 7)
      "Maomao vai testar em si mesma antes"
      "Liberada para o paciente"))

(defun main ()
  (let* ((erva1 (make-erva :nome "Camomila" :preco-por-grama 0.8 :toxicidade 1))
         (erva2 (make-erva :nome "Absinto" :preco-por-grama 2.5 :toxicidade 5))
         (erva3 (make-erva :nome "Aconito" :preco-por-grama 6 :toxicidade 9))
         (ervas (list erva1 erva2 erva3)))
    (format t "--- Estoque ---~%")
    (dolist (e ervas)
      (format t "~a - ~a~%" (descreve-erva e) (aviso e)))
    (format t "--- Dose ---~%")
    (format t "12g de ~a: R$ ~,2f~%" (erva-nome erva2) (preco-da-dose erva2 12))))

(main)
