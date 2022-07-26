use veed; 
 INSERT INTO bandeira VALUES(1, 'MasterCard');
INSERT INTO bandeira VALUES(2, 'Visa');
INSERT INTO bandeira VALUES(3, 'Hipercard');
INSERT INTO bandeira VALUES(4, 'Elo');

INSERT INTO cartao VALUES(1, '23412334123781200', 'Yasmin Soares a b', '888.454.700-83', '22', '2025', 1);
INSERT INTO cartao VALUES(2, '23412334123921200', 'Rodrigo Cartório', '888.454.700-83', '22', '2025', 2);
INSERT INTO cartao VALUES(3, '23412334123821200', 'Vanessa da Mata', '888.454.700-83', '22', '2025', 3);
INSERT INTO cartao VALUES(4, '22341233412332120', 'Elvis Whisky', '888.454.700-83', '22', '2025', 4);

INSERT INTO cupom_desconto VALUES  (1,'ved10', 10);
INSERT INTO cupom_desconto VALUES  (2,'ved20', 20);
INSERT INTO cupom_desconto VALUES  (3,'vedapp',15);

INSERT INTO serie VALUES(1,"Compra");
INSERT INTO serie VALUES(2,"Venda");

INSERT INTO cliente VALUES( 1 , 'Washington ', 'Pereira', null, '47464472845'  , '1997-09-25' , 'washington@hotmail.com' , '960537796' , 'washington'  );
INSERT INTO cliente VALUES( 2 , 'Yon ', 'Jefferson'      , null,  '47464472846'  , '1997-09-26' , 'jefferson@hotmail.com'  , '960537797' , 'jefferson'  );
INSERT INTO cliente VALUES( 3 , 'Alex ', 'Satos'         , null,  '47464472847'  , '1997-09-27' , 'Alex@hotmail.com'       , '960537798' , 'alex'        );
INSERT INTO cliente VALUES( 4 , 'Caroline ', 'Melo'      , null, '47464472848'  , '1997-09-28' , 'Caroline@hotmail.com'   , '960537799' , 'caroline'    );
INSERT INTO cliente VALUES( 5 , 'William ', 'Barbosa'    , null,  '47464472849'  , '1997-09-29' , 'William@hotmail.com'    , '960537790' , 'william'     );

INSERT INTO categoria VALUES(1,'Frutas');
INSERT INTO categoria VALUES(2,'Verduras');
INSERT INTO categoria VALUES(3,'Legumes');
INSERT INTO categoria VALUES(4,'Mercearia');

INSERT INTO marca VALUES(1, 'Korin');
INSERT INTO marca VALUES(2, 'Mãe Terra');
INSERT INTO marca VALUES(3, 'Vapza');
INSERT INTO marca VALUES(4, 'Coopernatural');
INSERT INTO marca VALUES(5, 'BioEssência');
INSERT INTO marca VALUES(6, 'Surya Brasil');
INSERT INTO marca VALUES(7, 'TerraFlor');
INSERT INTO marca VALUES(8, 'Soouvie');

INSERT INTO status_produto VALUES(1,'Disponível');
INSERT INTO status_produto VALUES(2,'Indisponível');
INSERT INTO status_produto VALUES(3,'Descontinuado');
   
INSERT INTO produto VALUES (1, 'banana prata', 12.0, 'google.com', 1, 1, 'A Banana é a fruta mais consumida em todo o mundo! No Brasil, o IBGE estima que cada brasileiro consome em média 7 kilos de banana por ano e nosso país é um dos líderes em produção mundial dessa amarelinha. Bastante rica em nutrientes, a Banana tem além do conhecido potássio que ajuda na prevenção de cãibras na realização de exercícios físicos (lembram do tenista Guga?), também possui quantidades relevantes de magnésio, ferro e vitaminas A, C e do complexo B. A Banana-Nanica é a versão de cor amarelo-esverdeada, quase sempre maior que a Banana-Maçã e de sabar mais suave.', 1, 1.0);
INSERT into produto VALUES (2, 'maca', 10.00, 'google.com', 1, 1, 'A Maçã foi por muito tempo considerada uma fruta super luxuosa, protagonista de quadros de diversos pintores, de histórias da bíblia e da literatura antiga em geral. Nutricionalmente, a Maçã é rica em pectina, uma fibra que auxilia na redução do colesterol ruim. Além disso, possui vitaminas A, C e potássio. Dentistas ainda afirmam que a maçã tem poderes de ajudar na limpeza dos dentes e deixá-los mais brancos e saudáveis!', 1, 1.0);
INSERT INTO produto VALUES (3, 'jaca', 8.00, 'google.com', 1, 1, 'A jaca é tão grande que você pode \"enfiar o pé na jaca\", literalmente. Muito comum na fabricação de doces e geleias, a jaca é o maior fruto comestível que nasce em uma árvore. Isso mesmo, diferente da melancia ou do abacaxi, que são cultivados em plantação rasteira, ela cresce na jaqueira e sua origem é indiana.', 1, 2.0);
INSERT INTO produto VALUES (4, 'batata chips doce', 9.99, 'google.com', 4, 1, 'Feito apenas com Batata Doce Laranja orgânica e sal rosa, este snack é uma opção saudável já que é assado e não frito. Feito em pequena escala, com produção transparente e artesanal pela Alkimia.', 1, 0.600);
INSERT INTO produto VALUES (5, 'alface', 7.00, 'google.com', 2, 1, 'A alface crespa tem esse nome por conta das pequenas ondulações nas pontas de suas folhas. É o tipo de alface mais comum entre todos os tipos de alface, não é a tôa que quase toda salada têm alface crespa! Diferente da alface americana que é crocante, suas folhas são bastante flexíveis, longas e abertas. A alface crespa é rica em fibras e auxilia no processo de digestão.', 1, 0.800);
INSERT INTO produto VALUES (6, 'mel', 11.60, 'google.com', 4, 2, 'O Mel é um alimento natural produzido pelas abelhas a partir do néctar das flores. Por conta disso, existem variados tipos de méis de acordo com a floração, variando assim sua cor, sabor e aroma.', 1, 0.500);
INSERT INTO produto VALUES (7, 'Manga Palmer', 9.00, 'google.com', 1, 3, 'A Manga é conhecida pela sua polpa suculenta e saborosa com cheiro agradável, e é um fruto bastante apreciado no Brasil. Nutricionalmente é rica em vitaminas A, C e do complexo B, além de betacaroteno, substância precursora da vitamina A no organismo. Devido a quantidade de ferro que possui, é indicada em tratamentos contra a anemia e a alta concentração de fibras auxilia no processo de digestão.', 1, 1.0);
INSERT INTO produto VALUES (8, 'Colve', 7.00, 'google.com', 2, 2, 'O tradicional acompanhamento da nossa querida Feijoada! A Couve-Manteiga é da mesma família da mostarda, repolho, nabo e rabanete. Tem folhas longas, macias e de formato ondulado, com distintos tons de verdes. É uma folha súper versátil na cozinha, podendo ser consumida crua, cozida ou refogada. Essa hortaliça é rica em antioxidantes, vitamina C, cálcio, ferro e fibras. A couve-manteiga algumas vezes é ofericida já cordata em tirinhas, o que causa a perda de nutrientes, em especial vitamina C. Na Raízs, trabalhamos com a Couve fresquinha em maços.', 1, 0.600);
INSERT INTO produto VALUES (9, 'Brocolis', 9.99, 'google.com', 2, 1, 'O Brócolis Japonês, também conhecido como brócolis ninja, é um buquê único e em geral comercializado já limpo, podendo ser fresco ou congelado (na Raízs trabalhamos somente com a versão fresca, muito mais saborosa). Esse verdinho é super rico em ferro (que geralmente é ausente na dieta dos brasileiros), cálcio e vitaminas (A, B, C e K). Além do alto teor nutritivo, diversas pesquisas comprovam sua ação anticancerígena contra o câncer de mama, bexiga, pulmão ecólon. Além de tantos benefícios, pode ser consumido cru ou cozido!', 1, 1.0);
INSERT INTO produto VALUES (10, 'Lichia', 14.00, 'google.com', 2, 4, 'A lichia é uma fruta exótica de sabor doce e com formato de coração, com origem na China, mas que também é cultivada no Brasil. Esta fruta é rica em compostos fenólicos, como as antocianinas e flavonoides, e em minerais como potássio, magnésio e fósforo e vitamina C que têm propriedades antioxidantes que auxiliam no combate à obesidade e diabetes, além de proteger contra doenças cardiovasculares.', 1, 1.0);
INSERT INTO produto VALUES (11, 'sal do himalaia', 14.99, 'google.com', 4, 1, 'Produzido no Nepal e China, o Sal do Himalaia vem de uma reserva natural, aos pés da Cordilheira. O sal convencional é refinado, já o rosa é colhido manualmente e não passa por nenhum processo de industrialização, além de ser moído. Produto iodado e com laudo.', 1, 1.0);
INSERT INTO produto VALUES (12, 'cha camomila', 13.69, 'google.com', 4, 2, 'O Chá de Camomila Orgânico Orrganic é delicioso, livre de glúten e lactose. Nada como preparar aquele chazinho saudável e apreciar todos os momentos. Ainda mais quando é orgânico, livre de corantes, açúcar e conservantes. Saboreie o seu Chá de Camomila da Organic a qualquer momento do dia, inclusive no café da manhã e chá da tarde!', 1, 0.300);
INSERT INTO produto VALUES (13, 'uva', 14.87, 'google.com', 1, 4, 'A Uva é uma grande fonte de energia, possui grande quantidade de carboidratos, oferecem mais disposição e ajuda no crescimento. Boa também para o funcionamento da tiroide. Vendida por quilo (KG). Variações de uva: Branca, Italiana, Benitaca, Sem semente, Preta, Rosa e Rubi.', 1, 1.0);
INSERT INTO produto VALUES (14, 'abacaxi', 14.97, 'google.com', 1, 5, 'O Abacaxi é uma fruta tropical bonita, de maravilhoso aroma e considerada um “remédio”, já que contém uma enzima que digere a proteína e auxilia na digestão dos alimentos. Ajuda no funcionamento dos rins. O suco alivia dores de garganta e bronquite. Além dos açúcares naturais, contém vitamina A, C, complexo B, cálcio, fósforo, cobre, ferro e magnésio.Vendido por quilo (KG) ou unidade (UN). Variações de abacaxi: Caiano, Pérola e Terra de Areia.', 1, 1.0);
INSERT INTO produto VALUES (15, 'vinho argentino organic', 68.98, 'google.com', 4, 3, 'Corte mais tradicional da Argentina. Vinho muito bem integrado e balanceado apresenta taninos sedosos e aveludados. Cor vermelha violeta com suave toque de madeira, os aromas admiráveis por sua intensidade e complexidade, na boca ressaltam toques doces e cremosos.', 2, 2.0);


INSERT INTO pedido_status VALUES(1,'Aguardando confirmação');
INSERT INTO pedido_status VALUES(2,'Pedido confirmado');
INSERT INTO pedido_status VALUES(3,'Pedido a caminho');
INSERT INTO pedido_status VALUES(4,'Pedido entregue');

INSERT INTO uf VALUES(1, 'AC');
INSERT INTO uf VALUES(2, 'AL');
INSERT INTO uf VALUES(3, 'AP');
INSERT INTO uf VALUES(4, 'AM');
INSERT INTO uf VALUES(5, 'BA');
INSERT INTO uf VALUES(6, 'CE');
INSERT INTO uf VALUES(7, 'DF');
INSERT INTO uf VALUES(8, 'ES');
INSERT INTO uf VALUES(9, 'GO');
INSERT INTO uf VALUES(10, 'MA');
INSERT INTO uf VALUES(11, 'MT');
INSERT INTO uf VALUES(12, 'MS');
INSERT INTO uf VALUES(13, 'MG');
INSERT INTO uf VALUES(14, 'PA');
INSERT INTO uf VALUES(15, 'PB');
INSERT INTO uf VALUES(16, 'PR');
INSERT INTO uf VALUES(17, 'PE');
INSERT INTO uf VALUES(18, 'PI');
INSERT INTO uf VALUES(19, 'RJ');
INSERT INTO uf VALUES(20, 'RN');
INSERT INTO uf VALUES(21, 'RS');
INSERT INTO uf VALUES(22, 'RO');
INSERT INTO uf VALUES(23, 'RR');
INSERT INTO uf VALUES(24, 'SC');
INSERT INTO uf VALUES(25, 'SP');
INSERT INTO uf VALUES(26, 'SE');
INSERT INTO uf VALUES(27, 'TO');

INSERT INTO tipo_frete VALUES(1, 'Comun');
INSERT INTO tipo_frete VALUES(2, 'Expresso');

INSERT INTO frete VALUES(1, 1, 1, 40.0);
INSERT INTO frete VALUES(2, 1, 1, 20.0);
INSERT INTO frete VALUES(3, 1, 1, 30.0);
INSERT INTO frete VALUES(4, 2, 1, 40.0);
INSERT INTO frete VALUES(5, 2, 1, 20.0);
INSERT INTO frete VALUES(6, 2, 1, 20.0);
INSERT INTO frete VALUES(7, 3, 1, 30.0);
INSERT INTO frete VALUES(8, 4, 1, 40.0);
INSERT INTO frete VALUES(9, 5, 1, 20.0);


INSERT INTO endereco VALUES(1, '06824-035 ' , 'Rua Santana de Parnaiba',45, 'null' , 'Embu das Artes',  25, 'São Paulo');
INSERT INTO endereco VALUES(2, '06824-036 ' , 'Rua Flamento' ,48, 'null', 'Embu das Artes',25, 'São Paulo');
INSERT INTO endereco VALUES(3, '06824-037 ' , 'Rua Andorinha Pequena',  24, 'null' , 'Embu das Artes',  25, 'São Paulo');
INSERT INTO endereco VALUES(4, '06824-038 ' , 'Rua Vasco da Gama',  452, 'null', 'Embu das Artes',25, 'São Paulo');
INSERT INTO endereco VALUES(5, '06824-035 ' , 'Rua Santana de Parnaiba',45, 'null','Embu das Artes',  25, 'São Paulo');
INSERT INTO endereco VALUES(6, '06824-036 ' , 'Rua Flamento' ,48,'null ', 'Embu das Artes',25, 'São Paulo');
INSERT INTO endereco VALUES(7, '06824-037 ' , 'Rua Andorinha Pequena',24,'null', 'Embu das Artes',  25, 'São Paulo');
INSERT INTO endereco VALUES(8, '06824-038 ' , 'Rua Vasco da Gama',  452, 'null' , 'Embu das Artes' ,  25, 'São Paulo');

INSERT INTO cliente_endereco VALUES(1, 1);
INSERT INTO cliente_endereco VALUES(2, 1);
INSERT INTO cliente_endereco VALUES(3, 4);
INSERT INTO cliente_endereco VALUES(4, 3);
INSERT INTO cliente_endereco VALUES(2, 4);


INSERT INTO pedido VALUES (1, 1, 1,     1, 1, '2022-01-22',1);
INSERT INTO pedido VALUES (2, 2, null,  2, 1, '2022-01-23',4);
INSERT INTO pedido VALUES (3, 3, null,  2, 3, '2022-01-25',4);




select * from cliente_endereco;

INSERT INTO item_pedido VALUES(1,1,5,1,2,1);
INSERT INTO item_pedido VALUES(2,1,10,1,1,1);
INSERT INTO item_pedido VALUES(1,2,2,1,1,2);
INSERT INTO item_pedido VALUES(2,5,4,1,2,2);
INSERT INTO item_pedido VALUES(3,4,7,1,2,2);
INSERT INTO item_pedido VALUES(4,6,4,1,1,2);
INSERT INTO item_pedido VALUES(5,3,2,1,1,2);
INSERT INTO item_pedido VALUES(1,7,3,1,2,3);


INSERT INTO frete_pedido VALUES( 1 , 1);
INSERT INTO frete_pedido VALUES( 2 , 2);
INSERT INTO frete_pedido VALUES( 3 , 3);

INSERT INTO nota_fiscal VALUES(1, 2, '321321213131232000000000000.00', 1);
INSERT INTO nota_fiscal VALUES(2, 2, '123214214141242000000000000.00', 2);

INSERT INTO cliente_cartao VALUES(1, 1);
INSERT INTO cliente_cartao VALUES(2, 2);
INSERT INTO cliente_cartao VALUES(3, 3);
INSERT INTO cliente_cartao VALUES(4, 4);


INSERT INTO fornecedor VALUES(1, 'Distribuidora Santos'      ,  '22789635000135'  , 'DistribuidoraSantos@hotmail.com');
INSERT INTO fornecedor VALUES(2, 'Distribuidora Oliveira'    ,  '22789635000136'  , 'DistribuidoraOliveira@hotmail.com');
INSERT INTO fornecedor VALUES(3, 'Organicos do Brasil'       ,  '22789635000137'  , 'OrganicoBrasil@hotmail.com');
INSERT INTO fornecedor VALUES(4, 'Hortifrute Grangera '      ,  '22789635000138'  , 'HortifruteGrangera@hotmail.com');

INSERT INTO fornecedor_endereco VALUES(1, 5);
INSERT INTO fornecedor_endereco VALUES(2, 6);
INSERT INTO fornecedor_endereco VALUES(3, 7);
INSERT INTO fornecedor_endereco VALUES(4, 8);

INSERT INTO estoque_produto VALUES(1, 1, 100);
INSERT INTO estoque_produto VALUES(1, 2, 100);
INSERT INTO estoque_produto VALUES(1, 3, 100);
INSERT INTO estoque_produto VALUES(1, 4, 100);
INSERT INTO estoque_produto VALUES(1, 5, 100);
INSERT INTO estoque_produto VALUES(1, 6, 100);
INSERT INTO estoque_produto VALUES(1, 7, 100);
INSERT INTO estoque_produto VALUES(1, 8, 100);
INSERT INTO estoque_produto VALUES(1, 9, 100);
INSERT INTO estoque_produto VALUES(1, 10, 100);
INSERT INTO estoque_produto VALUES(1, 11, 100);
INSERT INTO estoque_produto VALUES(1, 12, 100);
INSERT INTO estoque_produto VALUES(1, 13, 100);
INSERT INTO estoque_produto VALUES(1, 14, 100);
INSERT INTO estoque_produto VALUES(1, 15, 100);

INSERT INTO receita VALUES(1, 'BOLO DE BANANA NUTRICIONAL'  , '3 bananas prata 
4 ovos
1/2 xícara de óleo de cozinha
1 xícara e 1/2 de açúcar orgânico (ou mascavo)
1 xícara de farinha de rosca
1/2 xícara de aveia em flocos finos
1 colher de sopa (rasa) de fermento em pó
Canela em pó' , 'Untar a forma como de usual (margarina e farinha de trigo).
Com meia xícara de açúcar prepare uma calda e reserve.
No liquidificador bata os ovos, duas bananas, o óleo e uma xícara de açúcar.
Em seguida, junte a farinha de rosca e a aveia aos poucos, misture bem.
Por último acrescente o fermento e mexa delicadamente.
Fatie uma banana e coloque no fundo da forma. Por cima das bananas coloque a calda reservada e por cima da calda a massa.
Asse em forno preaquecido por aproximadamente 35 minutos, ou até que o bolo esteja douradinho.Faça o teste com o palitinho, se estiver seco após enfiar no bolo está pronto.');
INSERT INTO receita VALUES(2, 'COOKIES DE AVEIA E GRÃOS SAUDÁVEIS'  , '
1 xícara de aveia em flocos grandes
1 xícara de açúcar mascavo orgânico
1 xícara de farinha de trigo integral
1 xícara de farinha de trigo normal
1 ovo inteiro, preferência orgânico
3/4 de xícara de manteiga
3 colheres de nozes picadas
1 colher de chá de linhaça
1/2 colher de chá de fermento em pó
óleo para untar a forma' , '
Misture todos os ingredientes, faça bolas pequenas e coloque na forma untada uma distante da outra pois ela se espalha quando assa.
Não deixe queimar por baixo, fique de olho no forno enquanto assa. Preaqueça o forno antes e não deixe mais do que 20 minutos, forno médio (180ºC).');
INSERT INTO receita VALUES(3, 'BOLO ORGÂNICO DE BANANA COM AMEIXA'  , '
4 bananas orgânicas bem maduras
2 ovos
1 xícara de aveia (xícara de 220 ml)
50 ml de azeite virgem
5 ameixas secas grandes
4 castanhas do Pará
6 castanhas de caju
2 colheres de gergelim tostado
canela a gosto
azeite para untar a forma
limão' , '
Descasque as bananas e amasse bem até formar uma pasta
Pegue os ovos e use inteiro, mas retire a pele da gema para evitar o cheiro forte no bolo (pra fazer isso utilize limão)
Acrescente a farinha de aveia e o azeite ferva em uma panela as ameixas por 5 minutos
Despreze a água e amasse as ameixas ainda quente com um auxilio de um garfo
Misture adicione as castanhas e misture coloque a canela e por fim o fermento em pó
Preaqueça o forno na temperatura media de 200° C
Coloque a massa na forma e deixe descansar coloque no forno por 35 minutos 
Quando esfriar, corte e pronto
Você terá um bolo nutritivo, muito saboroso e também saudável');
INSERT INTO receita VALUES(4, 'SMOOTHIE DE KIWI, GENGIBRE E BANANA'  , ' 3 kiwis
4 saquinhos de mingau de aveia
1 banana
8 gelos
200 ml de leite orgânico
250 g de iogurte orgânico sem gordura
1/2 cm de gengibre ralado
2 ou 3 colheres de chá de mel, para adoçar' , 'Bata tudo no liquidificador por 30 segundos e separe em quatro copos. As cascas do kiwi podem ser usadas para decorar.');
INSERT INTO receita VALUES(5, 'FROZEN YOGURT COM MORANGO E PIMENTA'  , '
2 potes de iogurte natural
1 caixa de creme de leite
5 colheres de sopa açúcar orgânico
1 pimenta dedo de moça
1 caixa de morangos
Folhas de hortelã' , '
Bata por aproximadamente 1 minuto, o iogurte natural,o creme de leite, 4 colheres de açúcar orgânico e 2 morangos no liquidificador. Após obter um creme homogêneo e rosa claro, divida-o em duas taças de vidro de tamanho médio.
Leve a sobremesa ao congelador por aproximadamente 3 horas.
Corte os morangos e a pimenta. Utilize fatias dos morangos e folhas de hortelã para decorar. Salpique pedaços da pimenta sobre a sobremesa de forma a preencher os espaços de forma igualitária.');
INSERT INTO receita VALUES(6, 'MANJAR LEVE DE MILHO VERDE'  , '
2 milho verde
1 leite de coco 200 ml
1 litro de leite
6 colheres de sopa de amido de milho
8 colheres de sopa de açúcar orgânico' , '
Descasque o milho e retire da espigas os grãos.
Depois, coloque o conteúdo no liquidificador.
Acrescente o leite de coco.
Bata por 2 minutos, e depois peneire a mistura para obter somente o creme.
Coloque o conteúdo na panela junto com o litro de leite.
A parte, dilua o amido em 1 copo de leite e acrescente na panela.
Coloque o açúcar.
No fogo médio, mexa sempre por 20 minutos, quando engrossar a mistura desligue o fogo e deixe descansar por 1 minuto.
Coloque em forma apropriada para manjar ou pudim e leve a geladeira.
Após desenformar, pode colocar canela em pó em cima para realçar o sabor.');

INSERT INTO armazenamento VALUES(1, 'Armazenar em Temperatura Ambiente.');
INSERT INTO armazenamento VALUES(2, 'Armazenar na Geladeira Abaixo de 8ªC.');
INSERT INTO armazenamento VALUES(3, 'Armazenar em frizer abaixo de 0ºC.');

INSERT INTO  informacao VALUES(1,1,1);
INSERT INTO  informacao VALUES(2,2,1);
INSERT INTO  informacao VALUES(3,3,2);


INSERT INTO  informacao_produto VALUES(1,1);
INSERT INTO  informacao_produto VALUES(1,2);
INSERT INTO  informacao_produto VALUES(1,3);
INSERT INTO  informacao_produto VALUES(2,1);




INSERT INTO historico_pedido VALUES( 1 , 1 , 1, '2022-01-20');
INSERT INTO historico_pedido VALUES( 2 , 1 , 1, '2022-01-21');
INSERT INTO historico_pedido VALUES( 3 , 1 , 1, '2022-01-22');
INSERT INTO historico_pedido VALUES( 4 , 2 , 1, '2022-01-22');
INSERT INTO historico_pedido VALUES( 5 , 2 , 1, '2022-01-23');
INSERT INTO historico_pedido VALUES( 6 , 2 , 1, '2022-01-24');

INSERT INTO boleto VALUES (1, 1, '589784236243672873');

INSERT INTO tipo_pagamento VALUES(1, 'Boleto');
INSERT INTO tipo_pagamento VALUES(2, 'Cartão Credito');
INSERT INTO tipo_pagamento VALUES(3, 'Cartão Debito');
INSERT INTO tipo_pagamento VALUES(4, 'Pix');

INSERT INTO pagamento VALUES(1,1,1);
INSERT INTO pagamento VALUES(2,2,2);
INSERT INTO pagamento VALUES(3,2,3);


INSERT INTO pix VALUES(1,'000000000000000000000000000000000000001');
INSERT INTO pix VALUES(2,'000000000000000000000000000000000000002');
INSERT INTO pix VALUES(3,'000000000000000000000000000000000000003');
INSERT INTO pix VALUES(4,'000000000000000000000000000000000000004');

INSERT INTO tipo_pagamento_pix VALUES (4, 4);



INSERT INTO tipo_pagamento_boleto VALUES(1, 1);

INSERT INTO tipo_pagamento_cartao VALUES(2, 2);
INSERT INTO tipo_pagamento_cartao VALUES(3, 3);


INSERT INTO  produto_fornecedor VALUES(1,1);
INSERT INTO  produto_fornecedor VALUES(1,2);
INSERT INTO  produto_fornecedor VALUES(1,3);
INSERT INTO  produto_fornecedor VALUES(1,4);



 