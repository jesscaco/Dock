Dado('que estou na solicitação de seguro de veículo') do
    visit "http://sampleapp.tricentis.com/101/app.php"
end 

Quando('clico no asterisco do campo') do 
    $seguroVeiculo.dica
end 

Então('valido a mensagem a dica do campo') do 
    $seguroVeiculo.validar_dicas
end

Quando('preencho a tela dados do veiculo') do
    $seguroVeiculo.preencher_campo_make
    $seguroVeiculo.preencher_campo_perfomance
    $seguroVeiculo.preencher_numero_assento
    $seguroVeiculo.preencher_tipo_combustivel
    $seguroVeiculo.preencher_preco_tabela
    $seguroVeiculo.preencher_numero_placa
    $seguroVeiculo.preencher_quilometragem
    $seguroVeiculo.clicar_proximo
end
  
Quando('insiro os dados do segurado') do
    $seguroVeiculo.preencher_nome
    $seguroVeiculo.preencher_sobrenome
    $seguroVeiculo.preencher_dt_nascimento
    $seguroVeiculo.preencher_genero
    $seguroVeiculo.preecher_endereco
    $seguroVeiculo.preencher_pais
    $seguroVeiculo.preencher_cep
    $seguroVeiculo.preecher_cidade
    $seguroVeiculo.preencher_ocupacao
    $seguroVeiculo.preencher_hobbies
    $seguroVeiculo.clicar_next
end

Quando('insito os dados do produto') do 
    $seguroVeiculo.preencher_dt_inicio
    $seguroVeiculo.preencher_soma_seguro
    $seguroVeiculo.preencher_avaliacao
    $seguroVeiculo.preencher_seguroDanos
    $seguroVeiculo.preencher_produtoAdicional
    $seguroVeiculo.preencher_carro_cortesia
    $seguroVeiculo.next_produto
end

Então('visualizo a mensagem na tela de selecionar a opção de preço') do
    $seguroVeiculo.validar_mensagem_op_preco
end
  