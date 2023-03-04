extends Node2D

var teste = false
var valor = 0
var numero = 0
var lista = []
var nome
var tamanho = len(lista)

func _on_Button_pressed():
	#Coletando dados inseridos pelo usuário
	numero = int($LineEditnum.text)
	nome = str($LineEditnome.text)


func _on_Button2_pressed():
	#Incrementando o número inserido pelo usuário
	for i in range(10):
		numero+=i
		lista.append(numero)
	$saidaButton2.text = str(lista)

func _on_Button3_pressed():
	#Mudando o nome do usuário de acordo com os dados da lista
	#Se houver algum número ímpar, o nome deve adicionar "baldo" ao final
	var i = 0
	while(i<tamanho):
		if lista[i]%2 == 0:
			$saidaButton3.text = str(nome)
		i+=1
	$saidaButton3.text = str(nome) + "baldo"
	
