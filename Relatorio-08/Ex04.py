from abc import ABC, abstractmethod

class IUnidadeDeRede(ABC):

    @abstractmethod
    def executar_invasao(self):
      pass
      
class Cyberdeck:
  
  def __init__(self, modelo):
    self.modelo = modelo

class OperadorNetrunner(IUnidadeDeRede):
 
  def __init__(self, nome, modelo):
    self.nome = nome
    self.cyberdeck = Cyberdeck(modelo)
    
  def executar_invasao(self):
    print(f"{self.nome} usa o cyberdeck {self.cyberdeck.modelo} para quebrar o ICE do servidor")

class DroneDeVigilancia(IUnidadeDeRede):

  def __init__(self, codigo):
    self.codigo = codigo
  def executar_invasao(self):
    print(f"Drone {self.codigo} interceptando o sinal da rede")
    
class CelulaHacker:
  def __init__(self, nome, membros: list[IUnidadeDeRede]):
    self.nome = nome
    self.membros = membros
    
def iniciar_ataque(self):
  print(f"Célula {self.nome} iniciando ataque")
  for membro in self.membros:]
    membro.executar_invasao()
      
if __name__ == "__main__":
  netrunner = OperadorNetrunner("Lucy", "Militech Paraline")
  drone = DroneDeVigilancia("DV-07")
  celula = CelulaHacker("Edgerunners", [netrunner, drone])
  celula.iniciar_ataque()
 
  # unidade = IUnidadeDeRede()
