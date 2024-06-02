
INSERT INTO Drivers (DriverID, Nome, CNH, Endereço, Contato) 
VALUES (1, 'Pedro Pedro', '999999999', 'Rua X, 444', '99999-9999');
GO

INSERT INTO Clients (ClientID, Nome, Empresa, Endereço, Contato) 
VALUES (1, 'João João', 'SpaceX', 'Rua X, 777', '98888-8888');
GO

INSERT INTO Orders (OrderID, ClientID, DriverID, DetalhesPedido, DataEntrega, Status) 
VALUES (1, 1, 1, 'Entrega Pacotes', '2024-06-01', 'Pendente');
GO