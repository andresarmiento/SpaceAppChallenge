#pragma strict
	public var vis: int = 0;
	
    gameObject.active = false;
    
	function Start () {
		
	}
	
	function Update() {
		if(vis > 0){
			gameObject.active = true;
		}
	}
	function Actulizar(valor)
	{
		vis = valor;
		
	}