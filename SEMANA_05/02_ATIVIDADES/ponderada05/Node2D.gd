extends Node2D

#declara variáveis
var numero = 0
var nome
var lista = []
var tamanho = len(lista)

func _on_Button_pressed():
	#coletando dados inseridos pelo usuário
	numero = int($LineEditnum.text)
	nome = str($LineEditnome.text)


func _on_Button2_pressed():
	#incrementando o número inserido pelo usuário e imprimindo na cena 
	for i in range(10):
		numero+=i
		lista.append(numero)
	$saidaButton2.text = str(lista)

func _on_Button3_pressed():
	#adicionando "baldo" ao nome se houver número impar na lista. Imprimindo na tela 
	var i = 0
	while(i<tamanho):
		if lista[i]%2 == 0:
			$saidaButton3.text = str(nome)
		i+=1
	$saidaButton3.text = str(nome) + "baldo"
	
