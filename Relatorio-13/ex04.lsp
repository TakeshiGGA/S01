(defstruct dominio
  nome
  elemento
  dificuldade
  mora)

(defun bonus-elemental (elemento)
  (case elemento
    (:electro   1.5)
    (:hydro     1.2)
    (otherwise  1)))

(defun recompensa-final (d)
  (* (dominio-mora d) (bonus-elemental (dominio-elemento d))))

(defun rota (lista dificuldade-maxima)
  (let* ((possiveis (remove-if-not (lambda (d) (<= (dominio-dificuldade d) dificuldade-maxima))
                                   lista))
         (textos (mapcar (lambda (d)
                           (format nil "~a - ~,1f de mora"
                                   (dominio-nome d) (recompensa-final d)))
                         possiveis)))
    textos))

(defun main ()
  (let ((dominios
          (list (make-dominio :nome "Cecilia Garden" :elemento :anemo
                              :dificuldade 2 :mora 1400)
                (make-dominio :nome "Midsummer Courtyard" :elemento :electro
                              :dificuldade 4 :mora 2200)
                (make-dominio :nome "Hidden Palace of Zhou Formula" :elemento :pyro
                              :dificuldade 3 :mora 1800)
                (make-dominio :nome "Peak of Vindagnyr" :elemento :cryo
                              :dificuldade 5 :mora 2600)
                (make-dominio :nome "Clear Pool and Mountain Cavern" :elemento :hydro
                              :dificuldade 1 :mora 1000)
                (make-dominio :nome "Violet Court" :elemento :electro
                              :dificuldade 3 :mora 2000))))
    (format t "--- Rota ate dificuldade 3 ---~%")
    (dolist (linha (rota dominios 3))
      (format t "~a~%" linha))

    (format t "--- Total ---~%")
    (format t "Mora de todos os dominios: ~,1f~%"
            (reduce #'+ (mapcar #'recompensa-final dominios)))

    (format t "--- Copia com setf ---~%")
    (let ((copia (copy-dominio (car dominios))))
      (setf (dominio-mora copia) 5000)
      (format t "Copia: ~a~%" (dominio-mora copia))
      (format t "Original: ~a~%" (dominio-mora (car dominios))))))

(main)
