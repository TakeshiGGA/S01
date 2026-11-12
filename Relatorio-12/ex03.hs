data Esboco = Esboco
  { titulo  :: String
  , tecnica :: String
  , horas   :: Int
  }

esbocoMaisRecente :: [Esboco] -> String
esbocoMaisRecente []    = "O caderno esta vazio."
esbocoMaisRecente (e:_) = titulo e ++ " (" ++ tecnica e ++ ")"

contarEsbocos :: [Esboco] -> Int
contarEsbocos []        = 0
contarEsbocos (_:resto) = 1 + contarEsbocos resto

horasDesenhando :: [Esboco] -> Int
horasDesenhando []        = 0
horasDesenhando (e:resto) = horas e + horasDesenhando resto

main :: IO ()
main = do
  let caderno =
        [ Esboco { titulo = "Criatura do pantano", tecnica = "nanquim", horas = 3 }
        , Esboco { titulo = "Ruinas do templo", tecnica = "grafite", horas = 5 }
        , Esboco { titulo = "Floresta morta", tecnica = "carvao", horas = 2 }
        ]

  putStrLn ("Mais recente: " ++ esbocoMaisRecente caderno)
  putStrLn ("Esbocos: " ++ show (contarEsbocos caderno))
  putStrLn ("Horas: " ++ show (horasDesenhando caderno))
  putStrLn (esbocoMaisRecente [])

  let cadernoNovo = Esboco { titulo = "Castelo em chamas", tecnica = "carvao", horas = 4 } : caderno

  putStrLn "--- Caderno anterior ---"
  putStrLn ("Mais recente: " ++ esbocoMaisRecente caderno)
  putStrLn ("Esbocos: " ++ show (contarEsbocos caderno))
  putStrLn "--- Caderno novo ---"
  putStrLn ("Mais recente: " ++ esbocoMaisRecente cadernoNovo)
  putStrLn ("Esbocos: " ++ show (contarEsbocos cadernoNovo))
