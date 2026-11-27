# DeLua
Plataforma digital educativa e interativa sobre pautas femininas, direitos e desigualdades de gênero, voltada a jovens e estudantes.
Projeto Integrador · IFRN, Campus Pau dos Ferros · Áreas: Informática e Sociologia

- Repositório: `yonaragomes/DeLua`
- Protótipo: Figma: https://www.figma.com/design/X1H8h6iHvuUXo4PjEEk8G5/DeLua?node-id=0-1&t=pxbQofm7ydeDxkus-1

## Integrantes

**Discentes**
- Anna Clara Holanda Castro Rêgo
- Grazielly de Souza Ribeiro
- Maria Júlia Campos Silveira Chaves
- Yonara Gomes de Paiva

**Orientadoras**
- Beatriz Soares de Souza
- Monalisa Ribeiro Gama

## Trilha escolhida
DELUA: ENFRENTAMENTO AOS TABUS, DESIGUALDADES E SILENCIAMENTOS POR MEIO DA TECNOLOGIA COMO INSTRUMENTO DE TRANSFORMAÇÃO SOCIAL.

## O problema real que o sistema resolve
Em uma sociedade marcada por desigualdades de gênero, as experiências e demandas das mulheres ainda são cercadas por tabus, desinformação e silenciamentos. Jovens e estudantes têm pouco acesso a informação qualificada sobre saúde feminina, sexualidade, direitos e violência de gênero. Muitas vezes também não sabem onde buscar ajuda.

O DeLua reúne em um só lugar conteúdos confiáveis, dados sociais com fonte e ano, atividades interativas e orientações sobre onde procurar apoio. A proposta tem base na Sociologia e busca apoiar o pensamento crítico.

## Funcionalidades
- **Início:** apresenta o projeto, destaca conteúdos recentes e dá acesso rápido às seções.
- **Mito ou Verdade?:** a pessoa escolhe entre mito e verdade e vê a resposta correta com explicação e fontes confiáveis.
- **Biblioteca de conteúdos:** livros, textos, artigos, materiais didáticos, vídeos e documentários, organizados por tema e com busca por título, assunto ou palavra-chave.
- **Dados sociais:** indicadores de educação, trabalho, participação social e violência contra mulheres, com fonte e ano.
- **Como buscar ajuda:** instituições, serviços e canais oficiais, com orientação por situação.
- **Ajude você também:** profissionais da saúde, do direito e da psicologia se cadastram para oferecer orientação, e a equipe valida o cadastro antes de publicar.
- **Curtidas e salvos:** a pessoa usuária curte e salva conteúdos de seu interesse.

## Modelagem do banco de dados

O modelo tem 18 tabelas, entre elas `usuario`, `profissional` `conteudo`, `tema`, `afirmacao`, `indicador` e `servico_ajuda`. 

## Como usamos IA
**Ferramenta:** Claude.

**Como a IA entrou no protótipo:** pedimos à IA uma proposta de protótipo. Não importamos o resultado para o Figma. Nós mesmas reproduzimos o wireframe no Figma, alterando o que achamos necessário. A proposta retornada pela IA já partia do site anterior, que mantém as cores e várias outras partes dele, e mudava algumas seções e páginas em relação a ele.

### Prompt do protótipo
> Você é uma designer e vai criar o protótipo navegável da plataforma **DeLua**, a nova versão de um site feminista sobre educação sexual feito em 2021 por alunas do IFRN, Campus Pau dos Ferros.
>
> **Observação:** A versão nova é parte de um Projeto Integrador. Ela continua o site original, mas amplia o foco da educação sexual para saúde feminina, direitos e desigualdades de gênero, e para o combate à desinformação. O público-alvo são jovens e estudantes. O tom é acolhedor, crítico e acessível, nunca infantilizado.
>
> **O que deve permanecer do site original:**
> - Nome "DeLua" e a ideia de lua e feminilidade da logo
> - Paleta lilás, branco e ciano, com tons de roxo como cores principais
> - Menu superior (estrutura/estilo)
> - Telas de cadastro ("Inscreva-se no DeLua") e de login ("Entrar no DeLua"), com e-mail ou nome de usuário e senha
> - Cards de publicação com hashtags de tema, título, resumo e autoria ("Por ...")
> - Carrosséis na Home ("Mais recentes", "Curtidos por você")
> - Filtros por tema: raça, classe, gênero, geração, comportamento e relacionamento
> - Blocos do newsletter (acho que isso), de "Parceiras da saúde" (psicóloga, ginecologista e sexóloga) e o rodapé com o e-mail de contato (desenvolvo melhor abaixo)
> - Seção "Sobre" com o nome, o símbolo e as cores, os valores (acessibilidade, cooperação, autonomia e esperança) e a equipe
>
> **O que deve mudar ou ser acrescentado:**
> 1. **Início:** apresentar a finalidade da plataforma, destacar conteúdos recentes, dar acesso rápido às seções e divulgar curiosidades, campanhas, projetos e ações educativas
> 2. **Mito ou Verdade?** (novo): mostrar uma afirmação, com botões "Mito" e "Verdade". Depois da escolha, mostrar se acertou, uma explicação educativa e as fontes confiáveis (deve ser acessado no Início, mas possuir uma página separada)
> 3. **Biblioteca de conteúdos** (substitui a página "Conteúdo"): reunir livros, textos, artigos, materiais didáticos, vídeos e documentários. Organizar por tema, com busca por título, assunto ou palavra-chave e links para plataformas externas (funcionais/interativos)
> 4. **Dados sociais** (novo): indicadores de educação, trabalho, participação social e violência contra mulheres. Cada dado mostra a fonte e o ano e permite comparar períodos ou grupos
> 5. **Como buscar ajuda** (novo, a partir das "Parceiras da saúde"): instituições, serviços e canais oficiais, com orientação por situação e materiais sobre direitos e proteção
> 6. **Curtidas e salvos:** o botão de curtir e o de salvar em cada conteúdo, e uma área "Meus salvos" para a pessoa usuária em seu Perfil (clicável)
>
> **Fluxo principal que o protótipo deve percorrer:** acessar (celular ou computador) → conhecer o DeLua na Home → escolher uma área pelo menu, pelos destaques ou pelos links rápidos → consultar um conteúdo, um dado ou uma orientação de ajuda → jogar o "Mito ou Verdade?" e ler a explicação → curtir ou salvar
> **Regras:** use só o conteúdo descrito aqui, não invente dados, números de telefone ou citações. Quando faltar conteúdo real, use texto de exemplo como "exemplo". Mantenha contraste adequado e botões grandes o bastante para o toque, em respeito ao valor de acessibilidade. Entregue as telas conectadas por interações clicáveis.

### O que ficou?
- **Do site anterior:** as cores (lilás, branco, ciano e amarelo), o nome e a identidade do DeLua, o eixo feminista, o público de jovens e estudantes e a estrutura de navegação (porém com Ínicio, Biblioteca, Dados Sociais, Onde Buscar Ajuda, Sobre, função de busca, com cadastro e login). Também ficaram a organização por temas (raça, classe, gênero, geração, comportamento e relacionamento), os cards com hashtags e autoria e a ideia dos carrosséis do Ínicio.
- **Da proposta da IA:** o protótipo inteiro, ou seja, a estrutura das telas e das novas seções (Mito ou Verdade?, Biblioteca de conteúdos, Dados sociais, Como buscar ajuda e Curtidas e salvos).

### O que mudou?
- **Em relação à proposta da IA:** Somente questões estéticas e algumas alterações estruturais. Reproduzimos a proposta manualmente no Figma, em vez de importar o arquivo.
- **Em relação ao site anterior:** o escopo passou de um site feminista de educação sexual para uma plataforma educativa e interativa. Ela também trata de questões históricas, sociais e culturais ligadas a gênero, direitos, desigualdades e desinformação. Entraram "Mito ou Verdade?", "Dados sociais" e "Como buscar ajuda". A página "Conteúdo" virou uma biblioteca com recomendações de livros (MecLivros), vídeos e documentários (Tela Brasil), busca por palavra-chave e links externos. Os dados e as explicações passaram a mostrar fonte e ano. A equipe do Projeto Integrador é diferente da equipe do site original, entramos em contato com as criadoras da iniciativa do DeLua, pedimos cooperação e a autorização para dar continuidade do projeto. 
