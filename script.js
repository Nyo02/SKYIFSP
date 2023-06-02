function pesquisar(){
    let select_origem = window.document.getElementById("Origem");
    var origem = select_origem.options[select_origem.selectedIndex].value;

    let select_destino = window.document.getElementById("Destino");
    var destino = select_destino.options[select_destino.selectedIndex].value;

    let select_data = window.document.getElementById("dataSaida");
    var data = select_data.value;

    buscar();

}