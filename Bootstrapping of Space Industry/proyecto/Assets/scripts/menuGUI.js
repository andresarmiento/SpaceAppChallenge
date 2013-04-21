#pragma strict

var x:float=45;
var x2:float=100;
var y1:float=125;
var y2:float=165;
var y3:float=205;
var y4:float=245;
var y5:float=285;
var y6:float=300;
var ancho:float=70;
var alto:float=25;

var Imagen1:Texture2D;
var Imagen2:Texture2D;
var Imagen3:Texture2D;
var Imagen4:Texture2D;
var Imagen5:Texture2D;


function OnGUI(){

	if(GUI.Button (Rect(x,y1,ancho,alto),Imagen1)){
	
		Application.LoadLevel("GUIjoin");
	
	}
	
	if(GUI.Button (Rect(x,y2,ancho,alto),Imagen2)){
	
		//Application.LoadLevel("Level1");
	
	}
	
	if(GUI.Button (Rect(x,y3,ancho,alto),Imagen3)){
	
		//Application.LoadLevel("Level1");
	
	}
	
	if(GUI.Button (Rect(x,y4,ancho,alto),Imagen4)){
	
		
		//Application.Quit();
	}
	
	if(GUI.Button (Rect(x,y5,ancho,alto),Imagen5)){
	
		
		//Application.Quit();
	}
	

}


function Start () {

}

function Update () {

}