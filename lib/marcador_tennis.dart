int calculate() {
  return 6 * 7;
}

String marcador(int jugadorX, int jugadorY){  
  if(jugadorX >=3 && jugadorX == jugadorY){
    return "deuce";
  }
  String advantage = verificarAdvantage(jugadorX, jugadorY);
  String ganar = verificarWin(jugadorX, jugadorY);
  if(ganar == ""){
    if( advantage == ""){
      String puntajeX = puntaje(jugadorX.toString());
      String puntajeY = puntaje(jugadorY.toString());

      String marcador = "X: $puntajeX Y: $puntajeY";

      return marcador;
    }    
    return advantage;
  }
  return ganar;
}

String puntaje(String puntaje){
  String resultado = "";
  switch(puntaje){
    case "0":
      resultado= "love";
      break;
    case "1":
      resultado=  "15";
      break;
    case "2":
      resultado=  "30";
      break;
    case "3":
      resultado= "40";
      break;
    case "empate":
      resultado = "Deuce";
      break;
    default:
      resultado= "advantage";
    break;
  }
  return resultado;
}

String verificarAdvantage (int jugadorX, jugadorY){
  String advantage="";
  if(jugadorX >3 && jugadorY>3){
    advantage= jugadorX > jugadorY ? "advantage X" : "advantage Y";
  }
  return advantage;
}

String verificarWin(int jugadorX, int jugadorY){
  if(jugadorX - jugadorY == 2){
    return "jugadorX win";
  }
  if(jugadorY - jugadorX == 2){
    return "JugadorY win";
  }
  return "";
}