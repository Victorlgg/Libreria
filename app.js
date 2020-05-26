
$(document).ready(function(){
	//$("#taskresult").hide();
	//listarTareas();
	//let edit = false;
	// console.log("hello world jquery");
	// console.log("Jquery is working");


//Agregar Libro
$("#book-add").submit( function(e){
    e.preventDefault();
    const postData = {
        nombre: $('#book-nombre').val() ,
        autor: $('#book-autor').val(),
        editorial: $('#book-editorial').val(),
        year: $('#book-year').val(),
        idCategoria: $('#book-idCat').val(),
        precio: $('#book-precio').val()
    };
    //console.log(postData);

    $.post("back/servicios/libros.php", postData, function(response){
        //alert(response);
        console.log(response);
    });
});


//Codigo fazt tutorial (Borrar)

//BUSCAR
/*
	$("#search").keyup(function(e) {
		let search = $("#search").val();
		if($('#search').val() && search){
			//ajax
			$.ajax({
				url:'task-search.php',
				type: 'POST',
				// datatype: "JSON",
				data: { search: search },
				success: function(response) {
					if(!response.error && response){

						let jsonTareas = JSON.parse(response);
						let template='';

						jsonTareas.forEach(task => {
							// console.log(task);
							template+=`<li>${task.nombre}</li>`
						});
						$("#taskresult").show();
						$("#container").html(template);
					}
				}
			})
			//ajax
		}
	})
//FIN BUSCAR

*/
/*
	//AGREGAR
	$('#task-form').submit( function(e) {
		e.preventDefault();
		const postData ={
			id: $('#task-id').val(),
			nombre: $('#name').val(),
			descripcion: $('#descripcion').val()
		};
		let url= edit === false ? 'task-add.php' : 'task-edit.php';
		console.log(url);

		$.post(url,postData, function(response) {
			console.log(response);
			$("#task-form").trigger("reset");
			listarTareas();
			edit=false;
			$("#submitbtn").html("Guardar tarea");
		});

		});
		
//

*/

/*
function listarTareas(){
	// $("#tareas").html();
	$.ajax({
		url: "task-list.php",
		type: "GET",
		success: function(response) {
			let jsonTask = JSON.parse(response);
			let template='';
			jsonTask.forEach(task =>{
				template+=`<tr taskId="${task.id}">
				<td>${task.id}</td>
				<td><a href=# class="task-item">${task.nombre}</a></td>
				<td>${task.descripcion}</td>
				<td>
				<button class="btn btn-danger borrar-Tarea">Eliminar</button>
				</td>

				</tr>`
			});
			$("#tareas").html(template);
		}
		})
}*/
    
/*
	$(document).on("click",".borrar-Tarea", function(){ 
		if(confirm("Estas seguro?")){

// console.log($this);
		let element = $(this)[0].parentElement.parentElement;
		let id= $(element).attr("taskId");
				console.log(id);
	$.post("task-delete.php",{id}, function(response){
		// console.log(response);
		listarTareas();
	})	

		}
		
		
	})*/

//Editar 
/*
$(document).on("click",".task-item", function(){
	let element = $(this)[0].parentElement.parentElement;
	let id = $(element).attr("taskid");
	// console.log(id);
	$.post("task-single.php", {id}, function(response){
		const jsonTareas = JSON.parse(response);
		// console.log(jsonTareas);
		$("#task-id").val(jsonTareas.id);
		$("#name").val(jsonTareas.nombre);
		$("#descripcion").val(jsonTareas.descripcion);
		edit=true;
		$("#submitbtn").html("Actualizar tarea");
	} )

})*/









});


