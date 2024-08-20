#!/bin/bash

echo "Iniciando o Script"
echo "O diretório atual é $PWD"

#instalando o python
sudo apt update
sudo apt install python3

#alterando permissões
sudo mkdir /home/calculadora
sudo chmod o+w /home/calculadora

#criando o arquivo calculadora.py
sudo echo "import sys" > /home/calculadora/calculadora.py
sudo echo "num1 = 'Número inválido'" >> /home/calculadora/calculadora.py
sudo echo "num2 = 'Número inválido'" >> /home/calculadora/calculadora.py
sudo echo "while num1 == 'Número inválido':" >> /home/calculadora/calculadora.py
sudo echo -e "\t" "print('Insira um número')" >> /home/calculadora/calculadora.py
sudo echo -e "\t" "try:" >> /home/calculadora/calculadora.py
sudo echo -e "\t" "\t" "num1 = float(input())" >> /home/calculadora/calculadora.py
sudo echo -e "\t" "except:" >> /home/calculadora/calculadora.py
sudo echo -e "\t" "\t" "print('Número inválido')" >> /home/calculadora/calculadora.py
sudo echo "while num2 == 'Número inválido':" >> /home/calculadora/calculadora.py
sudo echo -e "\t" "print('Insira outro número')" >> /home/calculadora/calculadora.py
sudo echo -e "\t" "try:" >> /home/calculadora/calculadora.py
sudo echo -e "\t" "\t" "num2 = float(input())" >> /home/calculadora/calculadora.py
sudo echo -e "\t" "except:" >> /home/calculadora/calculadora.py
sudo echo -e "\t" "\t" "print('Número inválido')" >> /home/calculadora/calculadora.py
sudo echo "print('Digite a operação')" >> /home/calculadora/calculadora.py
sudo echo "operacao = input()" >> /home/calculadora/calculadora.py
sudo echo "while operacao != '+' and operacao != '-' and operacao != '*' and operacao != '/':" >> /home/calculadora/calculadora.py
sudo echo -e "\t" "print('Operação inválida. Digite novamente')" >> /home/calculadora/calculadora.py
sudo echo -e "\t" "operacao = input()" >> /home/calculadora/calculadora.py
sudo echo "if operacao == '+':" >> /home/calculadora/calculadora.py
sudo echo -e "\t" "resultado = num1 + num2" >> /home/calculadora/calculadora.py
sudo echo -e "\t" "print(num1, '+', num2, '=', resultado)" >> /home/calculadora/calculadora.py
sudo echo "elif operacao == '-':" >> /home/calculadora/calculadora.py
sudo echo -e "\t" "resultado = num1 - num2" >> /home/calculadora/calculadora.py
sudo echo -e "\t" "print(num1, '-', num2, '=', resultado)" >> /home/calculadora/calculadora.py
sudo echo "elif operacao == '*':" >> /home/calculadora/calculadora.py
sudo echo -e "\t" "resultado = num1 * num2" >> /home/calculadora/calculadora.py
sudo echo -e "\t" "print(num1, '*', num2, '=', resultado)" >> /home/calculadora/calculadora.py
sudo echo "elif operacao == '/':" >> /home/calculadora/calculadora.py
sudo echo -e "\t" "resultado = num1 / num2" >> /home/calculadora/calculadora.py
sudo echo -e "\t" "print(num1, '/', num2, '=', resultado)" >> /home/calculadora/calculadora.py
sudo echo "else:" >> /home/calculadora/calculadora.py
sudo echo -e "\t" "print('Erro')" >> /home/calculadora/calculadora.py
sudo echo -e "\t" "sys.exit(1)" >> /home/calculadora/calculadora.py
sudo echo "exit()" >> /home/calculadora/calculadora.py

#executando o arquivo calculadora.py
python3 /home/calculadora/calculadora.py

echo "Finalizando o Script"
