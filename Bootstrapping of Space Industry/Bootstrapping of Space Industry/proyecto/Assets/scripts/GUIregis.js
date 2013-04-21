#pragma strict

var y:float=45;
var x1:float=125;
var x2:float=165;
var x22:float=165;

var x3:float=45;
var y2:float=125;
var y3:float=165;

var x4:float=45;
var y4:float=125;
var y5:float=165;



var ancho:float=70;
var alto:float=25;

var ancho2:float=70;
var alto2:float=25;

var Imagen1:Texture2D;
var Imagen2:Texture2D;
var Imagen3:Texture2D;
var textAreaString = "name";
var textAreaString2 = "pass";


function OnGUI(){

	GUI.Label (Rect (x3, y2, ancho2, alto2), "USER");
	
	GUI.Label (Rect (x3, y3, ancho2, alto2), "PASSWORD");
	
	textAreaString = GUI.TextArea (Rect (x4, y4, ancho2, alto2), textAreaString);
	textAreaString2 = GUI.TextArea (Rect (x4, y5, ancho2, alto2), textAreaString2);

	if(GUI.Button (Rect(x1,y,ancho,alto),Imagen1)){

	   var other : webconect = gameObject.GetComponent('webconect');
		//
		if(other.prueba(textAreaString,textAreaString2))
		{
			Application.LoadLevel("Level1");
		}
	}
	
	if(GUI.Button (Rect(x2,y,ancho,alto),Imagen2)){
	
	
		//Application.LoadLevel("Level1");
	
	}
	
	if(GUI.Button (Rect(x22,y,ancho,alto),Imagen3)){
	
		Application.LoadLevel("GUIprincipal");
	
	}
	
	

}



function Start () {

}

function Update () {

}