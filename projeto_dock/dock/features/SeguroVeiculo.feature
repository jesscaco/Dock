#language: pt

Funcionalidade: Seguro de Veiculo 

Cenario: Dica de seleção 
    Dado que estou na solicitação de seguro de veículo 
    Quando clico no asterisco do campo 
    Então valido a mensagem a dica do campo 

Cenario: Solicitação de seguro de veiculo 
    Dado que estou na solicitação de seguro de veículo 
    Quando preencho a tela dados do veiculo
    E insiro os dados do segurado
    E insito os dados do produto
    Então visualizo a mensagem na tela de selecionar a opção de preço 