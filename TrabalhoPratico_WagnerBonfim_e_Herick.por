/*
 * Observe que:
 * A função pressioneEnter serve para pausar o fluxo do programa, dando tempo para para ler a mensagem que aparece na tela.
 * 
 * O menu principal roda sem parar porque a variavel de controle já começa definida como Sim ["S"].
 * Para voltar ao menu principal voce precisa apenas interromper o fluxo do programa com um [pare], assim ele vai direto parao final do [faca enquanto] Menu Principal e executa de novo.
 * 	|-> para isso eu usei um [caso 0] nos submenus
 * 	|-> tambem reafirmei o Sim ["S"] para a variavel [rodaPrograma], mas isso nÃ£o era necessário
 * 	
 * Todo [caso contrario] interrompe o programa com uma mensagem de Erro e um pressioneEnter(), ignora todos os [caso X] que estão abaixo e vai direto para o final do [faca enquanto] do Menu Principal.
 */
programa
{
	inclua biblioteca Matematica
	inclua biblioteca Tipos
	inteiro opcao
	cadeia rodaPrograma = "S"
	funcao inicio()
	{
	escreva("\n       NOME DOS ACADEMICOS (DUPLA)          ")
	escreva("\nAcademico(a): Wagner Bonfim")
	escreva("\nAcademico(a): Herick ??????\n")	
	faca {
	   escreva("\n=======================================")
	   escreva("\n|      MENU TRABALHO AVALIATIVO       |")
	   escreva("\n=======================================")
	   escreva("\n| (1) Estruturas de Selecao           |")
	   escreva("\n| (2) Laco Para                       |")
	   escreva("\n| (3) Laco Enquanto                   |")
	   escreva("\n| (4) Laco Faca-Enquanto              |")	   
	   escreva("\n| (0) Sair do Programa                |")
	   escreva("\n=======================================")
	
	   escreva("\nSelecione uma opcao do menu: ")
	   leia(opcao)	
	   escolha (opcao)	{
	   		caso 0: //>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> SAIR DO PROGRAMA <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<//
	   			rodaPrograma = "N"	   			
	   			pare
			caso 1: //>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> SUBMNENU SELECAO <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<//
		 		submenuSelecao() //exibe as opcoes do submenu
		         	leia(opcao)
		         	escolha (opcao) {
		         		caso 1: // Exerc. 01 - Desconto em compra
		         			real compra
		         			escreva("Informe o valor da compra:\n> ")
		         			leia(compra)

		         			se (compra < 100.00) {
		         				escreva("-> Infelizmente nÃ£o podemos te oferecer um desconto.")
		         			} senao se (compra >= 100.00 e compra <= 499.99) {
		         				compra *= 0.95 //isso é a mesma coisa que [compra = compra * 0.95]
		         				escreva("-> Valor com desconto de 5%: R$ "+compra)
		         			} senao se (compra >= 500.00 e compra <= 999.99) {
		         				compra *= 0.93
		         				escreva("-> Valor com desconto de 7%: R$ "+compra)
		         			} senao {
		         				compra *= 0.90
		         				escreva("-> Valor com desconto de 10%: R$ "+compra)
		         			}
		         			
		         			pressioneEnter() //pausa o programa aguardando um Enter e volta ao menu principal
		         			pare
		         		/************************************************************/
		         		caso 2: // Exerc. 02 - Saudacao
		         			cadeia nome
		         			cadeia sexo

		         			escreva("Informe o seu nome:\n> ")
		         			leia(nome)
		         			escreva("\nInforme o seu sexo - M ou F:\n> ")
		         			leia(sexo)
		         			
		         			se (sexo == "M" ou sexo == "m" ou sexo == "F" ou sexo == "f") { //aceita maiusculas e minusculas
		         				se (sexo == "M" ou sexo == "m") {	//caso masculino
		         					escreva("\nIlmo. Sr. "+nome)
		         				}
		         				senao {						//caso feminino
		         					escreva("\nIlma. Sra. "+nome)
		         				}
		         				pressioneEnter()
		         				pare
		         			} senao escreva ("Sexo informado invalido.")
		         			
		         			pressioneEnter()
		         			pare
					/************************************************************/
					caso 3: // Exerc. 03 - Multiplo de 3 e 7
						inteiro numero
						escreva("Informe um numero: ")
						leia(numero)

						se (numero % 3 == 0 e numero % 7 == 0) {
							escreva(numero+" é um multiplo de 3 e 7.")
						}
						senao {
							escreva(numero+" não é um multiplo de 3 e 7.")
						}
						
		         			pressioneEnter()
		         			pare
					/************************************************************/
					caso 0:  //retorna ao menu principal
						rodaPrograma = "S" //essa atribuicao é opcional, apenas o [pare] ja basta para retornar ao menu principal
		         			pare
		         		/************************************************************/
		         		caso contrario:
			         		escreva("Opcao Invalida!")
			         		pressioneEnter()
		         	} //fim escolha
		 		pare //fim submenu SELECAO
		 	caso 2: //>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> SUBMNENU PARA <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<//
		 		submenuPara() //exibe as opcoes do submenu
		         	leia(opcao)
		         	escolha (opcao) {
		         		caso 1: // Exerc. 01 - Lista todos os nomes de uma turma
		         			inteiro quantidade	//quantidade de alunos
		         			cadeia nomes		//lista de nomes
		         			cadeia temporario	//guarda os nomes dentro do [para]
		         			
		         			escreva("Informe a quantidade de alunos da turma: ")
		         			leia(quantidade)
		         			escreva("Informe o nome de cada um dos alunos:\n> ")
		         			leia(nomes) //guarda o primeiro nome na variavel
		         			
		         			para (inteiro i=0;i<(quantidade-1);i++){ //quantidade-1 porque o primeiro nome ja foi armazenado antes do [para]
		         				escreva("> ")
		         				leia(temporario)
		         				nomes = nomes+", "+temporario
		         			}
		         			escreva(nomes)
		         			
		         			pressioneEnter()
		         			pare
		         		/************************************************************/
		         		caso 2: // Exerc. 02 - subtrai 20 se > 50, acrescenta 100 se < 50
		         			inteiro numero
		         			
		         			para(inteiro i=0; i < 8; i++){
		         				escreva("Informe um valor: ")
		         				leia(numero)
		         				se (numero > 50) {
		         					numero -= 20
		         				}
		         				senao {
		         					numero += 100
		         				}
		         				escreva("Valor apos o processamento: "+numero+"\n")
		         			}
		         			
		         			pressioneEnter()
		         			pare
					/************************************************************/
					caso 3: //// Exerc. 03 - Calcula aliquota de Imposto de Renda
						real salario
						cadeia nome
						cadeia cpf
						real renda
						inteiro dependentes
						
						escreva("Este programa vai calcular o imposto de renda de um grupo de 8 contribuintes\n")
						escreva("Primeiro, informe o valor do salario minimo atual: ")
						leia(salario)

						para(inteiro i=1; i <= 8; i++) { //mostra a aliquota devida a cada contribuinte
							escreva("\nContribuinte #"+i)
							
							escreva("\nNome: ")
							leia(nome)
							escreva("CPF: ")
							leia(cpf)
							escreva("Renda: ")
							leia(renda)
							escreva("Numero de dependentes: ")
							leia(dependentes)

							enquanto (dependentes > 0) { //a cada dependente subtrai da renda o equivalente a 7% do salario minimo
								renda -= salario * 0.07
								dependentes--
							}

							se (renda < salario*2) escreva("Contribuinte isento de tributacao.\n")
							se (renda >= salario*2 e renda < salario*3) escreva("Faixa 3% - Valor devido: "+(renda*0.03)+"\n")
							se (renda >= salario*3 e renda < salario*5) escreva("Faixa 9% - Valor devido: "+(renda*0.09)+"\n")
							se (renda >= salario*5 e renda < salario*7) escreva("Faixa 12% - Valor devido: "+(renda*0.12)+"\n")
							se (renda >= salario*7) escreva("Faixa 18% - Valor devido: "+(renda*0.18)+"\n")
						}
						
		         			pressioneEnter()
		         			pare
					/************************************************************/
					caso 0:  //retorna ao menu principal
						rodaPrograma = "S"
		         			pare
		         		caso contrario:
			         		escreva("Opcao Invalida!")
			         		pressioneEnter()
		         	} //fim escolha
		 		pare //fim submenu PARA
			caso 3: //>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> SUBMNENU ENQUANTO <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<//
				submenuEnquanto() //exibe as opcoes do submenu
		         	leia(opcao)
		         	escolha (opcao) {
		         		caso 1: //// Exerc. 01 - Numero elevado a 3
		         			inteiro x = 1 //é atribuido 1 apenas para ele entrar no [enquanto] pelo menos 1 vez
		         			
		         			enquanto (x != 0) {
		         				escreva("\nInforme um numero: (0 para sair)\n> ")
		         				leia(x)
		         				escreva(x+" elevado a 3 =  "+Matematica.potencia(x, 3.0))
		         			}
		         			//o pressioneEnter() não é necessário aqui porque quando o usuario digita 0 ele REALMENTE QUER sair do programa
		         			pare
		         		/************************************************************/
		         		caso 2: // Exerc. 02 - Maior e menor numero
		         			inteiro numero
		         			inteiro maior
		         			inteiro menor
		         			
		         			escreva("Digite um numero inteiro positivo: ")
		         			leia(numero)
		         			
		         			se (numero >= 0) { //o primeiro numero é, ao mesmo tempo, o maior e o menor até agora (isso pode vir a mudar no [enquanto] abaixo)
		         				maior = numero
		         				menor = numero
		         			} senao { //se for negativo o programa já vai parar aqui mesmo
		         				escreva("Programa finalizado.")
		         				pressioneEnter()
		         				pare
		         			}
		         			
		         			enquanto (numero >= 0) {
		         				escreva("Digite um numero inteiro positivo: ")
		         				leia(numero)
		         				se (numero < 0) pare //se o numero digitado for negativo, o programa vai parar aqui
		         				se (numero > maior) maior = numero //Dica: quando depois do [se] só tem 1 comando, não precisa usar chaves {}
		         				se (numero < menor) menor = numero
		         			}
		         			escreva("\nMaior numero digitado: "+maior)
		         			escreva("\nMenor numero digitado: "+menor)
		         			
		         			pressioneEnter()
		         			pare
					/************************************************************/
		         		caso 3: //// Exerc. 03 - calcula qunto tempo uma variavel leva para superar a outra
						inteiro carlos = 140
						inteiro fabio = 110
						inteiro contador = 0
						
						enquanto (fabio <= carlos) { //roda até fabio ser maior que carlos
							carlos += 1
							fabio += 4
							contador++
						}
						escreva("Levou "+contador+" anos para Fabio superar a altura de Carlos")
						
		         			pressioneEnter()
		         			pare
					/************************************************************/
		         		caso 0: //retorna ao menu principal
						rodaPrograma = "S"
		         			pare
		         		/************************************************************/
		         		caso contrario:
			         		escreva("Opcao Invalida!")
			         		pressioneEnter()
		         	} //fim escolha
		 		pare //fim submenu ENQUANTO
			caso 4: //>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> SUBMNENU FACA-ENQUANTO <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<//
				submenuFacaEnquanto() //exibe as opcoes do submenu
		         	leia(opcao)
		         	escolha (opcao) {
		         		caso 1: // Exerc. 01 - Carrinho de compras
		         			real soma = 0.0
		         			real preco
		         			inteiro contador = 0
		         			escreva("Bem vindo ao carrinho de compras 1.0! Utilize 0 para finalizar o carrinho e receber o total da compra.\n")
		         			faca {
		         				escreva("Informe o preço do produto: ")
		         				leia(preco)

		         				enquanto (preco < 0) { //se o preço informado for negativo, mostra uma mensagem de erro
		         					escreva("Erro! Informe o valor correto do produto: ")
		         					leia(preco)
		         				}
		         				soma += preco
		         				
		         				se (preco > 0) contador++ //só aumenta o contador se o preço for maior que zero, pois zero é o comando reservado para sair do carrinho
		         			} enquanto (preco != 0)

		         			escreva("Quantidade de itens: "+contador+". Valor Total: R$ "+soma)
		         			
		         			pressioneEnter()
		         			pare
		         		/************************************************************/
		         		caso 2: // Exerc. 01 - Area de uma residencia
		         			real largura			//largura do comodo
		         			real comprimento		//comprimento do comodo
		         			real area				//area do comodo
		         			real areaTotal = 0.0	//area total
		         			cadeia nome			//nome do comodo
		         			cadeia adicionar		//adicionar novo Comodo? Sim ou não
		         			cadeia continuar = "S"	//continua pedindo novos comodos
		         			
		         			faca {
		         				escreva("Qual o nome do comodo? ")
		         				leia(nome)
		         				escreva("\nQual a largura (em metros) do comodo? ")
		         				leia(largura)
		         				escreva("Qual o comprimento (em metros) do comodo? ")
		         				leia(comprimento)
		         				
		         				area = largura*comprimento	//calcula area do comodo
		         				areaTotal += area			//adiciona area do comodo ao Total
		         				escreva("-> Area do comodo "+nome+": "+area+" metros quadrados")
		         				
		         				escreva("\n\nDeseja adicionar novos comodos? ")
		         				leia(adicionar)
		         				se(adicionar=="Não" ou adicionar=="não" ou adicionar=="Nao" ou adicionar=="nao" ou adicionar=="N" ou adicionar=="n") { //uso de acento, maisculas e minusculas
		         					continuar = "N" //faz o [faca enquanto] parar
		         				}
		         			} enquanto(continuar == "S" ou continuar == "s")

		         			escreva("-> Area total da residencia: "+areaTotal+" metros quadrados")
		         			
		         			pressioneEnter() 
		         			pare
					/************************************************************/
		         		caso 3:
						inteiro somatoria = 0	
						inteiro cont = 0		//contador
						real media
						inteiro numero

						faca {
							escreva("Informe um valor numerico positivo (negativo para sair): ")
							leia(numero)
							se (numero>=0) { //só aumenta a soma e o contador se o numero for maior ou igual a zero
								somatoria += numero
								cont++
							}
						} enquanto(numero>=0)

						escreva("\nForam digitados "+cont+" numeros.")
						se (cont > 0) {
							escreva("\nSomatória dos valores digitados: "+somatoria)
							media = Tipos.inteiro_para_real(somatoria)/Tipos.inteiro_para_real(cont)
							escreva("\nMedia dos numeros digitados: "+media)
						} senao {
							escreva("\nNão foi possivel calcular a somatoria.")
							escreva("\nNão foi possivel calcular a media.")
						}
					
		         			pressioneEnter()
		         			pare
					/************************************************************/
		         		caso 0:  //retorna ao menu principal
						rodaPrograma = "S"
		         			pare
		         		/************************************************************/
		         		caso contrario:
			         		escreva("Opcao Invalida!")
			         		pressioneEnter()
		         	}
		 		pare //fim submenu FACA-ENQUANTO
			caso contrario: 
				escreva("\nOpcao Invalida!\nDigite novamente.")
				pressioneEnter()
		} // fim MENU PRINCIPAL
	} enquanto (rodaPrograma == "S" ou rodaPrograma == "s") // fim faca-enquanto MENU PRINCIPAL
	} //fim funcao inicio()

	//função que pausa o programa aguardando um Enter
	funcao vazio pressioneEnter() {
		escreva("\n\nPressione Enter para continuar...")
         	cadeia continuar
         	leia(continuar)
	}
	//funções que exibem os textos dos submenus
	funcao vazio submenuSelecao() {
		escreva("\n======================================")
		escreva("\n|    MENU - ESTRUTURAS DE SELECAO    |")
         	escreva("\n======================================")
         	escreva("\n| (1) Exercicio 01 - Desconto        |")
         	escreva("\n| (2) Exercicio 02 - Saudacao        |")
         	escreva("\n| (3) Exercicio 03 - Multiplo        |")
         	escreva("\n| (0) Voltar ao menu anterior        |")
         	escreva("\n======================================")		
         	escreva("\n\nSelecione uma opcao do menu: \n> ")
	}
	funcao vazio submenuPara() {
		escreva("\n=======================================")
		escreva("\n|         MENU - LACO PARA            |")
		escreva("\n=======================================")
		escreva("\n| (1) Exerc.01 - Variavel de Controle |")
		escreva("\n| (2) Exerc.02 - Variavel de Controle |")
		escreva("\n| (3) Exerc.03 - Variavel de Controle |")
		escreva("\n| (0) Voltar ao menu anterior         |")
		escreva("\n=======================================")
          escreva("\n\nSelecione uma opcao do menu: \n> ")
	}
	funcao vazio submenuEnquanto() {
		escreva("\n=======================================")
		escreva("\n|        MENU - LACO ENQUANTO         |")
		escreva("\n=======================================")
		escreva("\n| (1) Exercicio 01 - Pre-Teste        |")
		escreva("\n| (2) Exercicio 02 - Pre-Teste        |")
		escreva("\n| (3) Exercicio 03 - Pre-Teste        |")
		escreva("\n| (0) Voltar ao menu anterior        |")
		escreva("\n=======================================")
		escreva("\n\nSelecione uma opcao do menu: \n> ")
	}
	funcao vazio submenuFacaEnquanto() {
		escreva("\n=======================================")
          escreva("\n|     MENU - LACO FACA-ENQUANTO       |")
          escreva("\n=======================================")
          escreva("\n| (1) Exercicio 01 - Pos-Teste        |")
          escreva("\n| (2) Exercicio 02 - Pos-Teste        |")
          escreva("\n| (3) Exercicio 03 - Pos-Teste        |")
          escreva("\n| (0) Voltar ao menu anterior        |")
          escreva("\n=======================================")		
          escreva("\n\nSelecione uma opcao do menu: \n> ")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 9949; 
 * @DOBRAMENTO-CODIGO = [373, 379, 390, 401, 412];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */