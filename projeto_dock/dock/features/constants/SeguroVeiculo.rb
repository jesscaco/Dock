class Seguro < SitePrism::Page
#Tela de dados do veiculo
    element :dica, :xpath, "//*[@id='insurance-form']/div/section[1]/div[1]/i"
    element :make, "#make"
    element :marcaVeiculo, :xpath, "//*[@id='make']/option[5]"
    element :perfomance, "#engineperformance"
    element :numeroassento, "#numberofseats"
    element :assento, :xpath, "//*[@id='numberofseats']/option[5]"
    element :tipo_combustivel, "#fuel"
    element :combustivel, :xpath, "//*[@id='fuel']/option[3]"
    element :preco_tabela, "#listprice"
    element :numero_placa, "#licenseplatenumber"
    element :quilometragem, "#annualmileage"
    element :btnProximo, "#nextenterinsurantdata" 

#Tela Dado do segurado 
    element :nome, "#firstname"
    element :sobrenome, "#lastname"
    element :dt_nascimento, "#birthdate"
    element :genero, :xpath, "//*[@id='insurance-form']/div/section[2]/div[4]/p/label[1]/span"
    element :endereco, "#streetaddress"
    element :pais, "#country"
    element :nome_pais, :xpath, "//*[@id='country']/option[32]"
    element :cep, "#zipcode"
    element :cidade, "#city"
    element :ocupacao, "#occupation"
    element :op_ocupacao, :xpath, "//*[@id='occupation']/option[6]"
    element :hobbies, :xpath, "//*[@id='insurance-form']/div/section[2]/div[10]/p/label[1]/span"
    element :btn_next, "#nextenterproductdata" 

#Tela dados do produto 
    element :dt_inicio, "#startdate"
    element :soma_seguro, "#insurancesum"
    element :avaliacao, "#meritrating"
    element :op_avaliacao, :xpath, "//*[@id='meritrating']/option[3]"
    element :seguroDanos, "#damageinsurance"
    element :op_danos, :xpath, "//*[@id='damageinsurance']/option[3]"
    element :produtoAdicional, :xpath, "//*[@id='insurance-form']/div/section[3]/div[5]/p/label[1]/span"
    element :carro, "#courtesycar"
    element :cortesia, :xpath, "//*[@id='courtesycar']/option[3]"
    element :btn_segundo_next, "#nextselectpriceoption"
end