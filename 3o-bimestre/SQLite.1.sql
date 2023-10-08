# Liste todos os hotéis que funcionam até às 22h
SELECT * FROM hotel WHERE horarioFuncionamento = 22;
# Lista o top 3 hotéis melhores avaliados
SELECT * FROM hotel ORDER By avaliacao DESC LIMIT 3;
# Liste o histórico de usos de um determinado usuário

# Quais petshops um determinado animal de um determinado usuários ele já foi


# Quanto um determinado usuário já gastou no chatpet e quais foram as transações em ordem decrescente de valor
SELECT SUM(valor) as soma FROM transacao WHERE FK_usuario_c = 'Debor4'
