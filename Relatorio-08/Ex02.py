class HeroiOverwatch:
  
  def __init__(self, codinome, funcao):
    
    self.codinome = codinome
    self.funcao = funcao

  def usar_suprema(self):
    print(f"{self.codinome} ({self.funcao}) usou a suprema")
    
class HeroiTanque(HeroiOverwatch):

  def usar_suprema(self):
    print(f"{self.codinome} ({self.funcao}) usou Terremoto")


class HeroiSuporte(HeroiOverwatch):

  def usar_suprema(self):
    print(f"{self.codinome} ({self.funcao}) usou Transcendência")

  def curar_equipe(self):
    print(f"{self.codinome} curou a equipe")


if __name__ == "__main__":
  
  herois: list[HeroiOverwatch] = [
    HeroiOverwatch("Soldado 76", "Dano"),
    HeroiTanque("Reinhardt", "Tanque"),
    HeroiSuporte("Zenyatta", "Suporte"),
  ]

  for heroi in herois:
    heroi.usar_suprema()
    if isinstance(heroi, HeroiSuporte):
      heroi.curar_equipe()
