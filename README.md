# Script para Calculadora Python
Constrói e executa uma calculadora básica no seu terminal Shell.

## Como utilizar
1. Clone este repositório.
2. Permita a execução da `calculadora.sh`.
    
    ```
    $ chmod u+rwx ./calculadora.sh
    ```

3. Execute o arquivo.
    
    ```
    $ ./calculadora.sh
    ```

## Como funciona
- Ao ser executado, `calculadora.sh` irá instalar/atualizar o ambiente Python 3 em seu computador;
    
    ```
    sudo apt update
    sudo apt install python3
    ```
    
- cria uma pasta local e altera permissões para construção e execução da calculadora;

    ```
    sudo mkdir /home/calculadora
    sudo chmod o+w /home/calculadora
    ```

- utiliza o comando `echo` para criar o executável da calculadora em python;
    ```
    sudo echo "import sys" > /home/calculadora/calculadora.py ...
    
    python3 /home/calculadora/calculadora.py
    ```

- será **solicitado dois números e o tipo de operação, todos em sequência.** Após isso, o resultado será exibido em tela e o script será encerrado.

## Operações permitidas

| operator |    function    |
|----------|----------------|
| +        | adição         |
| -        | subtração      |
| *        | multiplicação  |
| /        | divisão        |