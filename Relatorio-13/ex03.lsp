(defstruct garota-magica
  nome
  escuridao
  bruxas)

(defun escuridao-total (grupo)
  (if (null grupo)
      0
      (+ (garota-magica-escuridao (car grupo))
         (escuridao-total (cdr grupo)))))

(defun total-de-bruxas (grupo)
  (reduce #'+ (mapcar #'garota-magica-bruxas grupo)))

(defun purifica (g quantidade)
  (make-garota-magica :nome (garota-magica-nome g)
                      :escuridao (if (>= quantidade (garota-magica-escuridao g))
                                     0
                                     (- (garota-magica-escuridao g) quantidade))
                      :bruxas (garota-magica-bruxas g)))

(defun main ()
  (let* ((garota1 (make-garota-magica :nome "Madoka" :escuridao 10 :bruxas 2))
         (garota2 (make-garota-magica :nome "Sayaka" :escuridao 85 :bruxas 6))
         (garota3 (make-garota-magica :nome "Mami" :escuridao 30 :bruxas 34))
         (garota4 (make-garota-magica :nome "Kyoko" :escuridao 40 :bruxas 18))
         (grupo (list garota1 garota2 garota3))
         (grupo-novo (cons garota4 grupo))
         (purificada (purifica garota2 50)))
    (format t "--- Grupo ---~%")
    (format t "Escuridao total: ~a~%" (escuridao-total grupo))
    (format t "Bruxas derrotadas: ~a~%" (total-de-bruxas grupo))

    (format t "--- ~a fez o contrato ---~%" (garota-magica-nome garota4))
    (format t "Grupo anterior: ~a~%" (escuridao-total grupo))
    (format t "Grupo novo: ~a~%" (escuridao-total grupo-novo))

    (format t "--- Purificacao ---~%")
    (format t "Original: ~a~%" (garota-magica-escuridao garota2))
    (format t "Purificada: ~a~%" (garota-magica-escuridao purificada))))

(main)
