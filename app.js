
var routeService = "http://localhost/libreria/back/servicios/";

$(document).ready(function () {
	listarCategorias();


	let varr = routeService;
	const varrr = routeService;

	//Agregar Libro
	$("#book-add").submit(function (e) {
		//Prevenir que se recargue la pagina
		e.preventDefault();

		//Variable con datos a enviar
		const postData = {
			nombre: $('#book-nombre').val(),
			autor: $('#book-autor').val(),
			editorial: $('#book-editorial').val(),
			year: $('#book-year').val(),
			idCategoria: $('#book-idCat').val(),
			precio: $('#book-precio').val()
		};
		//Peticion AJAX
		$.ajax({
			url: routeService + 'libros.php',
			type: 'POST',
			data: JSON.stringify(postData),
			statusCode: {
				404: function (data) {

				},
				201: function (response) {

				}
			},
			success: function (response) {
				let answer = response.result;
				alert("respuesta: " + answer);
			}
		});

	});

	//Buscar Libros
	$("#book-search").submit(function (e) {
		e.preventDefault();
		const postData = {
			search: "si",
			nombre: $('#book-s-nombre').val(),
			autor: $('#book-s-autor').val(),
			editorial: $('#book-s-editorial').val(),
			year: $('#book-s-year').val(),
			idCategoria: $('#book-s-idCat').val(),
			precio: $('#book-precio').val()
		};

		//Peticion POST
		$.post(routeService + "libros.php", JSON.stringify(postData), function (response) {
			if (response.result) {
				//Muestra si hubo error en variable result
				alert(response.result);
			} else {
				

				//variable local para iterar resultados
				let jsonBook = response;

				//Template para llenar tabla
				let template = '';

				//Llenar template con datos	
				jsonBook.forEach(task => {
					template += `<tr>
				<td>${task.nombre}</td>
				<td>${task.autor}</td>
				<td>${task.editorial}</td>
				<td>${task.year}</td>
				<td>${task.descripcion}</td>
				<td>${task.precio}</td>
				</tr>
				`;

				});
				//Mostrar en la tabla los datos
				$("#book-tbody").html(template);

			}

		});
	});

	//Listar categorias en los formularios
	function listarCategorias() {
		
		//Peticion AJAX de listas
		$.ajax({
			url: routeService + 'categorias.php',
			type: "GET",
			success: function (response) {
				
				//Variable almacenar respuesta
				let jsonTask = response;

				//Plantilla para llenar los formularios
				let template = '';

				//llenar plantilla con datos
				jsonTask.forEach(task => {
					template += `
				<option value=${task.idCategoria}>${task.descripcion}</option>`
				});

				//Mostrar datos como opciones en formularios
				$("#book-idCat").html(template);
				$("#book-s-idCat").append(template);
			}
		})
	}

});


