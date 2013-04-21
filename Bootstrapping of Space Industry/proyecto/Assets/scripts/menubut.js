#pragma strict
var lib1;


function Start () {

}

function Update () {

}

function OnGUI(){

	if(GUI.Button (Rect(320,0,80,20),"constructs")){
	
	 lib1=true;
	
	}
	
	if(lib1){
	if(GUI.Button (Rect(320,20,80,20),"energy")){
		lib1=false;
	
	}
	if(GUI.Button (Rect(320,40,80,20),"casa")){
		
		//var unity = GetUnity();
			//Sunity.SendMessage("valor","Actualizar",5);
		
		//var visi : vis = GameObject.Getcomponent("visibilidad");
				
		//if (visi.Update){
			
			//visi.Actulizar(8);
	 		//lib1=false;
		//}
	}
	
		
	
	}
}