class SeguroVeiculo < SitePrism::Page
    def dica
        $seguro.dica.click
    end

    def validar_dicas
       assert_text("Select an option")
    end

    def preencher_campo_make
        $seguro.make.click
        $seguro.marcaVeiculo.click        
    end

    def preencher_campo_perfomance 
        $seguro.perfomance.click
        $seguro.perfomance.set("12")
    end

    def preencher_numero_assento
        $seguro.numeroassento.click
        $seguro.assento.click
    end

    def preencher_tipo_combustivel
        $seguro.tipo_combustivel.click
        $seguro.combustivel.click 
    end 

    def preencher_preco_tabela
        $seguro.preco_tabela.click 
        $seguro.preco_tabela.set("1500")
    end

    def preencher_numero_placa 
        $seguro.numero_placa.click
        $seguro.numero_placa.set("09129H99")
    end 

    def preencher_quilometragem
        $seguro.quilometragem.click
        $seguro.quilometragem.set("89000")
        sleep 5
    end

    def clicar_proximo 
        $seguro.btnProximo.click
    end

    def preencher_nome 
        sleep 10
        $seguro.nome.click
        $seguro.nome.set("Jose")
    end    

    def preencher_sobrenome 
        $seguro.sobrenome.click
        $seguro.sobrenome.set("Santos")
    end

    def preencher_dt_nascimento 
        $seguro.dt_nascimento.click
        $seguro.dt_nascimento.set("27/03/1967")
    end

    def preencher_genero
        $seguro.genero.click
    end

    def preecher_endereco
        $seguro.endereco.click
        $seguro.endereco.set("Rua pitanga")
    end 

    def preencher_pais 
        $seguro.pais.click
        $seguro.nome_pais.click 
    end 

    def preencher_cep
        $seguro.cep.click
        $seguro.cep.set("06126320")
    end  

    def preecher_cidade
        $seguro.cidade.click 
        $seguro.cidade.set("Osasco")
    end

    def preencher_ocupacao
        $seguro.ocupacao.click 
        $seguro.op_ocupacao.click 
    end 

    def preencher_hobbies 
        $seguro.hobbies.click 
    end

    def clicar_next
        $seguro.btn_next.click 
        sleep 10
    end

    def preencher_dt_inicio
        $seguro.dt_inicio.click
        $seguro.dt_inicio.set("29/02/2021")
    end 

    def preencher_soma_seguro
        $seguro.soma_seguro.click 
        $seguro.soma_seguro.set("32.000")
    end

    def preencher_avaliacao
        $seguro.avaliacao.click
        $seguro.op_avaliacao.click
    end

    def preencher_seguroDanos
        $seguro.seguroDanos.click 
        $seguro.op_danos.click
    end

    def preencher_produtoAdicional
        $seguro.produtoAdicional.click 
    end

    def preencher_carro_cortesia
        $seguro.carro.click
        $seguro.cortesia.click
    end 

    def next_produto 
        $seguro.btn_segundo_next.click 
    end

    def validar_mensagem_op_preco
        sleep 8
        assert_text("Please, complete the first three steps to see the price table.")
    end
end