package main
import "fmt"

func gerarEscalaPlantao(n int) {
	dia := 1

	fmt.Println("---Escala de Plantão Tecnico---")

	for i := 1; i <= n; i++ {
		fmt.Printf("Plantao %d: Dia %d do mes\n", i, dia)
		dia = dia + 4;
	}
}
func main() {
	var n int

	fmt.Println("Digite a quantidade de plantões necessarios: ")
	fmt.Scanln(&n)
	gerarEscalaPlantao(n)
}
