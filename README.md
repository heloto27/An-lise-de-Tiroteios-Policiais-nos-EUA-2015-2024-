# Análise de Tiroteios Policiais nos EUA (2015–2024)

Projeto de análise de dados construído a partir da base Washington Post Fatal Force Database, que reúne registros de tiroteios fatais envolvendo policiais nos Estados Unidos entre 2015 e 2024. O projeto combina uma camada de análises em SQL com um dashboard interativo em Power BI.

## 📌 Sobre o projeto

Este projeto teve como objetivo transformar um conjunto de dados públicos e sensíveis em análises e um painel visual claro, permitindo explorar o perfil das vítimas, a distribuição geográfica e temporal dos casos, e padrões relevantes ao longo dos anos — primeiro através de consultas SQL, e depois em um dashboard no Power BI.

## Objetivos

Praticar SQL avançado (CTEs, joins, agregações) em um cenário com dados reais e desafiadores.

Praticar modelagem de dados e DAX no Power BI.

Construir um dashboard multi-página com navegação intuitiva.

Extrair insights demográficos, geográficos e temporais a partir de dados brutos.

## Análises em SQL

A pasta sql/ reúne consultas organizadas por tipo de pergunta de negócio, incluindo:

Distribuição geográfica — ocorrências por estado e cidades que concentram mais de 50% das ocorrências do seu estado (ocorrencias_por_estado.sql, cte_cidades_50pct_por_estado.sql, percentual_ocorrencias_por_estado.sql).

Perfil demográfico — proporção de vítimas desarmadas por raça, proporção de mortes por raça e estado, e um recorte específico sobre mulheres negras na Califórnia (proporcao_desarmados_por_raca.sql, proporcao_mortes_por_raca_estado.sql, mulheres_negras_california.sql).

Contexto da ocorrência — proporção de casos com tentativa de fuga por raça, e evolução de ocorrências envolvendo indícios de doença mental (cte_proporcao_fuga_por_raca.sql, cte_evolucao_doenca_mental.sql).

Agências policiais — agências com número de ocorrências acima da média (geral e por estado), além de joins entre ocorrências e agências, com recorte específico para a Califórnia (agencias_acima_da_media.sql, cte_agencias_acima_media_estado.sql, join_ocorrencias_agencias.sql, ocorrencias_agencias_california.sql).

As queries fazem uso de CTEs, joins e agregações para responder perguntas de negócio específicas, servindo de base analítica para o dashboard.

## Dashboard (Power BI)

O relatório é dividido em 3 páginas:

Visão Geral — indicadores principais e panorama consolidado do período.

Perfil das Vítimas — recortes demográficos (idade, gênero, raça, estado de saúde mental, entre outros).

Distribuição Geográfica e Temporal — mapas e séries temporais, incluindo a métrica de Média Diária de ocorrências.

## Ferramentas utilizadas
SQL (SQLite) — 12 queries analíticas, incluindo CTEs, joins e agregações

Power BI — modelagem, DAX e construção do dashboard

DAX — medidas para breakdowns demográficos e cálculo de Média Diária

Paleta de cores azul-escuro e vermelho, com menu de navegação vertical

##  Fonte de dados

Washington Post Fatal Force Database — base pública mantida pelo Washington Post.

## Principais aprendizados
Tradução de perguntas de negócio em consultas SQL, usando CTEs para organizar lógica em etapas.

Construção de medidas DAX para análises demográficas cruzadas.

Lidar com limitações de cartões dinâmicos no Power BI (algumas medidas precisaram ser fixadas manualmente após tentativas malsucedidas de solução totalmente dinâmica).

Boas práticas de storytelling visual ao lidar com um tema sensível.


## Autora

Projeto desenvolvido por Heloísa Torres como parte do portfólio de análise de dados, com foco em SQL, Power BI, DAX e storytelling com dados.
