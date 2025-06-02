<%-- 
    Document   : estilos
    Created on : 02/06/2025, 13:23:54
    Author     : User
--%>

<%--
  Ficheiro: estilos.jsp
  Prop�sito: Cont�m os estilos CSS (Cascading Style Sheets) que s�o comuns
             a v�rias p�ginas da �rea do recepcionista.
  Como usar: Inclua este ficheiro noutras JSPs usando: <jsp:include page="_partials/estilos.jsp" />
--%>
<style>
    /* Estilo geral para o corpo da p�gina */
    body { 
        font-family: Arial, sans-serif; /* Tipo de letra principal */
        margin: 0; /* Remove margens padr�o do navegador */
        background-color: #f4f7f6; /* Cor de fundo suave para a p�gina toda */
        color: #333333; /* Cor principal do texto */
        line-height: 1.6; /* Espa�amento entre linhas para melhor leitura */
    }

    /* Estilo para a �rea principal de conte�do das p�ginas */
    .main-content { 
        padding: 25px; /* Espa�o interno */
        max-width: 1200px; /* Largura m�xima para n�o ficar muito largo em ecr�s grandes */
        margin: 20px auto; /* Centra o conte�do na p�gina e d� espa�o em cima/baixo */
        background-color: #ffffff; /* Fundo branco para a �rea de conte�do */
        border-radius: 8px; /* Cantos arredondados */
        box-shadow: 0 2px 10px rgba(0,0,0,0.08); /* Sombra suave */
    }

    /* Estilo para o cabe�alho dentro da �rea de conte�do (onde fica o t�tulo e bot�es como "Adicionar Novo") */
    .header { 
        display: flex; /* Alinha o t�tulo e o bot�o lado a lado */
        justify-content: space-between; /* Coloca o t�tulo na esquerda e o bot�o na direita */
        align-items: center; /* Alinha verticalmente ao centro */
        margin-bottom: 25px; /* Espa�o abaixo do cabe�alho */
        padding-bottom: 15px; /* Espa�o abaixo da linha */
        border-bottom: 1px solid #e0e0e0; /* Linha cinzenta clara para separar */
    }

    /* Estilo para os t�tulos principais (H1) */
    h1 { 
        color: #2c3e50; /* Cor azul escura para os t�tulos */
        margin: 0; /* Remove margem padr�o do h1 para controlar melhor */
        font-size: 24px; /* Tamanho do t�tulo */
    }

    /* Estilos para tabelas */
    table { 
        width: 100%; /* Tabela ocupa a largura toda dispon�vel */
        border-collapse: collapse; /* Tira espa�os entre as bordas das c�lulas, fica mais limpo */
        background: white; /* Fundo branco para a tabela */
        box-shadow: 0 1px 3px rgba(0,0,0,0.05); /* Sombra muito leve */
        border-radius: 5px; /* Cantos arredondados para a tabela */
        overflow: hidden; /* Garante que o border-radius funciona bem com as c�lulas */
    }
    th, td { /* Estilos para c�lulas de cabe�alho (th) e c�lulas normais (td) */
        border: 1px solid #e0e0e0; /* Borda cinzenta clara */
        padding: 12px 15px; /* Espa�o dentro das c�lulas (vertical e horizontal) */
        text-align: left; /* Alinha o texto � esquerda */
        font-size: 14px; /* Tamanho do texto dentro da tabela */
    }
    th { /* Estilo espec�fico para c�lulas de cabe�alho */
        background-color: #f8f9fa; /* Fundo cinza muito claro */
        font-weight: bold; /* Texto a negrito */
        color: #495057; /* Cor do texto do cabe�alho */
    }
    tr:nth-child(even) { /* Estilo para linhas pares da tabela (come�ando da segunda) */
        background-color: #fdfdfd; /* Cor de fundo um pouco diferente para facilitar a leitura */
    }
    tr:hover { /* Estilo quando o rato passa por cima de uma linha da tabela */
        background-color: #f1f1f1; /* Cor de fundo muda para destacar */
    }

    /* Estilos para bot�es */
    .btn-novo { /* Bot�o para "Adicionar Novo" */
        background-color: #28a745; /* Cor verde */
        color: white; 
        padding: 10px 18px; 
        text-decoration: none; /* Tira o sublinhado de link */
        border-radius: 5px; 
        font-size: 14px;
        transition: background-color 0.2s ease; /* Efeito suave ao mudar cor */
        border: none; /* Remove borda padr�o de bot�es */
        cursor: pointer; /* Rato vira m�ozinha */
    }
    .btn-novo:hover { 
        background-color: #218838; /* Verde mais escuro */
    }
    .btn-action { /* Estilo base para bot�es de a��o pequenos (ex: Editar, Apagar) */
        color: white; 
        padding: 6px 12px; 
        text-decoration: none; 
        border-radius: 4px; 
        margin-right: 8px; /* Espa�o � direita do bot�o */
        font-size: 0.9em; /* Texto um pouco mais pequeno */
        border: none;
        cursor: pointer;
        transition: background-color 0.2s ease;
    }
    .btn-edit { background-color: #007bff; /* Azul para Editar */ }
    .btn-edit:hover { background-color: #0056b3; }
    .btn-delete { background-color: #dc3545; /* Vermelho para Apagar */ }
    .btn-delete:hover { background-color: #c82333; }
    
    /* Estilos para formul�rios */
    .form-container { /* Caixa que envolve o formul�rio */
        background: white; 
        padding: 25px; 
        border-radius: 8px; 
    }
    .form-group { /* Cada grupo de etiqueta + campo de texto */
        margin-bottom: 20px; 
    }
    .form-group label { 
        display: block; /* Etiqueta ocupa a linha toda */
        margin-bottom: 8px; 
        font-weight: bold; 
        color: #495057; /* Cor da etiqueta */
    }
    /* Estilo para v�rios tipos de campos de formul�rio */
    .form-group input[type="text"],
    .form-group input[type="password"],
    .form-group input[type="email"],
    .form-group input[type="tel"], /* Para telefone */
    .form-group input[type="date"], /* Para datas */
    .form-group select { /* Para caixas de sele��o (dropdown) */
        width: 100%; /* Ocupa a largura toda */
        padding: 10px; 
        border: 1px solid #ced4da; /* Borda cinzenta */
        border-radius: 4px; 
        box-sizing: border-box; /* Importante para o padding n�o estragar a largura */
        font-size: 14px;
    }
    .form-group select { /* Ajuste para caixas de sele��o terem altura parecida com inputs */
        height: 40px; 
    }
    .form-group small { /* Para textinhos de ajuda abaixo dos campos */
        font-size: 0.85em;
        color: #6c757d; /* Cinza */
        display: block;
        margin-top: 5px;
    }
    .form-actions { /* �rea onde ficam os bot�es de Salvar/Cancelar do formul�rio */
        margin-top: 25px; 
        padding-top: 20px;
        border-top: 1px solid #e0e0e0; /* Linha separadora */
        text-align: right; /* Alinha os bot�es � direita */
    }
    .btn-cancel { /* Bot�o de Cancelar */
        background-color: #6c757d; /* Cinza */
        color: white; 
        padding: 10px 18px; 
        text-decoration: none; 
        border-radius: 5px; 
        margin-left: 10px; /* Espa�o � esquerda, se houver outro bot�o antes */
        font-size: 14px;
        border: none;
        cursor: pointer;
        transition: background-color 0.2s ease;
    }
    .btn-cancel:hover { background-color: #5a6268; }

    /* Estilos para mostrar o estado dos quartos na tabela de forma colorida */
    .status-Dispon�vel { color: #28a745; font-weight: bold; } /* Verde */
    .status-Ocupado { color: #dc3545; font-weight: bold; }    /* Vermelho */
    .status-Reservado { color: #fd7e14; font-weight: bold; }  /* Laranja */
    .status-Em_Manuten��o { color: #ffc107; font-weight: bold; } /* Amarelo */
    .status-A_Limpar { color: #17a2b8; font-weight: bold; }    /* Azul claro (ciano) */

    /* Estilos para mensagens de erro ou sucesso dentro de formul�rios ou no topo de listas */
    .mensagem-formulario-erro {
        color: #721c24; /* Cor do texto */
        background-color: #f8d7da; /* Cor de fundo */
        border: 1px solid #f5c6cb; /* Cor da borda */
        padding: 10px 15px;
        border-radius: 4px;
        margin-bottom: 20px;
        font-size: 0.9em;
    }
     .mensagem-formulario-sucesso {
        color: #155724;
        background-color: #d4edda;
        border: 1px solid #c3e6cb;
        padding: 10px 15px;
        border-radius: 4px;
        margin-bottom: 20px;
        font-size: 0.9em;
    }
</style>
