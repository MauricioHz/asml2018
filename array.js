var pedido = [];
var producto = [];
var compra = [];
var area = [];

compra.push("VERDE");
compra.push("ROJO");
compra.push("AMARILLO");
compra.push("BLANCO");
compra.push("NEGRO");

area.push("UNO");
area.push("DOS");
area.push("TRES");

producto.push(compra);
producto.push(area);

pedido.push(producto);


producto = [];
compra = [];
area = [];

compra.push("CASA");
compra.push("EDIFICIO");
compra.push("MESON");
compra.push("GALPON");
compra.push("TECHO");

area.push("RAMA");
area.push("HOJA");
area.push("TALLO");
area.push("FLOR");

producto.push(compra);
producto.push(area);

pedido.push(producto);

console.log(pedido);

var valores = pedido[0][0];

valores.forEach(function(element) {
    console.log(element);
});
