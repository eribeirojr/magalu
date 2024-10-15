# Suporte Magalu

## Problemas

### Apache

**Descrição:** O serviço Apache não estava sendo carregado, nem manualmente nem automaticamente.  
**Pesquisa:** Verificação nos arquivos de log e arquivos de configuração.  
**Solução:** O arquivo `/etc/apache2/sites-enable/000-default.conf` estava com uma diretiva inválida na linha 19. Assim que comentada, o serviço foi iniciado sem problemas.

### MySQL

**Descrição:** O serviço MySQL não estava sendo carregado, nem manualmente nem automaticamente.  
**Pesquisa:** Verificação nos arquivos de log e arquivos de configuração.  
**Solução:** O arquivo de configuração estava carregando uma série de configurações incorretas. Uma vez que o arquivo foi corretamente configurado, o serviço foi iniciado sem problemas. Linha do arquivo com problemas: 23.

### RabbitMQ

**Descrição:** O serviço do RabbitMQ estava subindo e travando em busca do listener.  
**Pesquisa:** Verificação nos arquivos de log e arquivos de configuração.  
**Solução:** O Listener do Rabbit estava configurado de forma errada, com a opção `#RABBITMQ_NODE_PORT=80` habilitada. Após corrigir o arquivo `/etc/rabbitmq/rabbitmq-env.conf`, o serviço foi iniciado sem problemas.

## Scripts no Git

Os scripts envolvidos nesse troubleshooting estão hospedados no seguinte endereço:

[https://github.com/eribeirojr/magalu](https://github.com/eribeirojr/magalu)

Dúvidas, por favor entrar em contato com eribeirojr@gmail.com ou (11) 97952-9888.

