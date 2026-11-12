data Etapa = NaFila | NoBanho | Concluido
  deriving (Show, Eq)

data Atendimento = Atendimento
  { cliente :: String
  , servico :: String
  , valor   :: Double
  , etapa   :: Etapa
  }

descrever :: Atendimento -> String
descrever a = cliente a ++ " - " ++ servico a ++ " - " ++ show (etapa a)

concluir :: Atendimento -> Atendimento
concluir a = a { etapa = Concluido }

arrecadado :: [Atendimento] -> Double
arrecadado lista = sum (map valor (filter (\a -> etapa a == Concluido) lista))

main :: IO ()
main = do
  let atendimento1 =
        Atendimento { cliente = "Deus do Rio"
                    , servico = "Banho de ervas"
                    , valor   = 50.0
                    , etapa   = NoBanho }
  let atendimento2 =
        Atendimento { cliente = "Sem Rosto"
                    , servico = "Banho comum"
                    , valor   = 20.0
                    , etapa   = NaFila }
  let atendimento3 =
        Atendimento { cliente = "Deus Rabanete"
                    , servico = "Banho quente"
                    , valor   = 35.0
                    , etapa   = NaFila }

  let atendimentos = [atendimento1, atendimento2, atendimento3]
  let atualizados = [concluir atendimento1, atendimento2, concluir atendimento3]

  putStrLn "--- Lista original ---"
  mapM_ putStrLn (map descrever atendimentos)
  putStrLn ("Arrecadado: R$ " ++ show (arrecadado atendimentos))

  putStrLn "--- Lista nova ---"
  mapM_ putStrLn (map descrever atualizados)
  putStrLn ("Arrecadado: R$ " ++ show (arrecadado atualizados))
