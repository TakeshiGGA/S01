pesoMaximo :: Double
pesoMaximo = 5.0

data Encomenda = Encomenda
  { destinatario :: String
  , peso         :: Double
  , frete        :: Double
  }

descrever :: Encomenda -> String
descrever e =
  destinatario e ++ " - " ++ show (peso e) ++ " kg - frete R$ " ++ show (frete e)

cabemNaVassoura :: [Encomenda] -> [Encomenda]
cabemNaVassoura lista = filter (\e -> peso e <= pesoMaximo) lista

totalDeFretes :: [Encomenda] -> Double
totalDeFretes lista = sum (map frete lista)

main :: IO ()
main = do
  let encomendas =
        [ Encomenda { destinatario = "Tombo", peso = 2.5, frete = 15.0 }
        , Encomenda { destinatario = "Osono", peso = 7.0, frete = 30.0 }
        , Encomenda { destinatario = "Ursula", peso = 4.0, frete = 20.0 }
        , Encomenda { destinatario = "Madame", peso = 9.5, frete = 40.0 }
        , Encomenda { destinatario = "Jiji", peso = 5.0, frete = 10.0 }
        ]

  let cabem = cabemNaVassoura encomendas

  putStrLn "--- Todas as encomendas ---"
  mapM_ putStrLn (map descrever encomendas)
  putStrLn "--- Cabem na vassoura ---"
  mapM_ putStrLn (map descrever cabem)
  putStrLn ("Total de fretes: R$ " ++ show (totalDeFretes cabem))
