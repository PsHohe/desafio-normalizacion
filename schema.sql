-- Tabla Clientes, sólo contiene el ID, el nombre y el teléfono
CREATE TABLE Clientes (
    ID_Cliente INT PRIMARY KEY,
    Nombre VARCHAR(100),
    Telefono VARCHAR(20)
);

-- Tabla Categorias, sólo contiene el ID y el nombre de la categoría
CREATE TABLE Categorias (
    ID_Categoria INT PRIMARY KEY,
    Nombre_Categoria VARCHAR(50)
);

-- Tabla Productos, sólo contiene el ID, el nombre del producto, el ID de la categoría y el precio
CREATE TABLE Productos (
    ID_Producto INT PRIMARY KEY,
    Nombre_Producto VARCHAR(100),
    ID_Categoria INT,
    Precio DECIMAL(10, 2),
    FOREIGN KEY (ID_Categoria) REFERENCES Categorias (ID_Categoria)
);

-- Tabla Ventas, contiene el ID de la venta, la fecha, el ID del cliente, el ID del producto, la cantidad y el total
CREATE TABLE Ventas (
    ID_Venta INT PRIMARY KEY,
    Fecha DATE,
    ID_Cliente INT,
    ID_Producto INT,
    Cantidad INT,
    Total DECIMAL(10, 2),
    FOREIGN KEY (ID_Cliente) REFERENCES Clientes (ID_Cliente),
    FOREIGN KEY (ID_Producto) REFERENCES Productos (ID_Producto)
);

-- IMPORTANTE:
-- NOTA: Como vimos en clase, sería ideal guardar el precio de cada venta (ej: en una tabla detalle), pero eso va más allá de lo solicitado en este desafío.
-- Por esta vez, prefiero mantenerme dentro de lo que es sólo la normalización.