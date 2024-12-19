# Desafío - Normalización de Base de Datos de Ventas

## 1. Aplicación de la Segunda Forma Normal (2FN)

Para cumplir con la 2FN, se identificaron y separaron las siguientes entidades:

1. **Clientes**
   - Justificación: Los datos del cliente (nombre y teléfono) solo dependen del ID del cliente, no de la venta.
   - Atributos: ID_Cliente, Nombre, Telefono

2. **Categorías**
   - Justificación: La categoría es una entidad independiente que solo depende de su propio ID.
   - Atributos: ID_Categoria, Nombre_Categoria

3. **Productos**
   - Justificación: Los datos del producto dependen del ID del producto y tienen relación con la categoría.
   - Atributos: ID_Producto, Nombre_Producto, ID_Categoria, Precio

## 2. Aplicación de la Tercera Forma Normal (3FN)

Para cumplir con la 3FN, se realizaron los siguientes cambios:

1. **Eliminación de dependencias transitivas**
   - El precio se movió a la tabla Productos, ya que depende del producto y no de la venta (ver nota siguiente).
   - Como vimos en clase, en una situación real sería ideal guardar una copia del precio en la venta o una tabla detalle (por ofertas, cambios de precio, etc.), pero para efectos de este ejercicio, lo dejé sólo en Productos.
   - El total se mantiene.

2. **Tabla Ventas final**
   - Solo contiene atributos que dependen directamente de la clave primaria (ID_Venta).
   - Se utilizan claves foráneas para relacionar con otras entidades (Productos, Clientes).

Con esto, se debería obtener una normalización que elimina la redundancia de datos y facilita el uso de la base de datos.

## 3. Código SQL

Se adjunta en este repositorio un archivo llamado schema.sql, con el código SQL final.
