(defstruct criatura
  nome
  bioma
  profundidade
  perigo)

(defparameter *catalogo*
  (list
   (make-criatura :nome "Peeper" :bioma "Zona Segura Rasa"
                  :profundidade 15 :perigo :inofensiva)
   (make-criatura :nome "Stalker" :bioma "Floresta de Algas"
                  :profundidade 60 :perigo :agressiva)
   (make-criatura :nome "Crabsnake" :bioma "Floresta de Cogumelos"
                  :profundidade 180 :perigo :agressiva)
   (make-criatura :nome "Reaper Leviathan" :bioma "Dunas"
                  :profundidade 250 :perigo :leviata)
   (make-criatura :nome "Ghost Leviathan" :bioma "Rio Perdido"
                  :profundidade 650 :perigo :leviata)))

(defun texto-do-perigo (perigo)
  (case perigo
    (:inofensiva "Inofensiva")
    (:agressiva  "Agressiva")
    (:leviata    "Leviata: mantenha distancia")
    (otherwise   "Desconhecido")))

(defun descreve-criatura (c)
  (format nil "~a - ~a - ~am - ~a"
          (criatura-nome c)
          (criatura-bioma c)
          (criatura-profundidade c)
          (texto-do-perigo (criatura-perigo c))))

(defun abaixo-de (metros catalogo)
  (remove-if-not (lambda (c) (> (criatura-profundidade c) metros))
                 catalogo))

(defun main ()
  (let ((fundas (abaixo-de 100 *catalogo*)))
    (format t "--- Todas as criaturas ---~%")
    (dolist (texto (mapcar #'descreve-criatura *catalogo*))
      (format t "~a~%" texto))
    (format t "--- Abaixo de 100m ---~%")
    (dolist (texto (mapcar #'descreve-criatura fundas))
      (format t "~a~%" texto))
    (format t "Quantidade: ~a~%" (length fundas))))

(main)
