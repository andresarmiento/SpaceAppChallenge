using UnityEngine;
using System.Collections;

public class webconect : MonoBehaviour
{

	// Use this for initialization
	void Start ()
	{
	
	}
	
	// Update is called once per frame
	void Update ()
	{
	
	}
	public bool prueba(string User ,string Password)
	{ 
		WebServiceClient.WebServiceConsult WebService = new WebServiceClient.WebServiceConsult();
		
		return WebService.ValidateUser(User,Password);
	}
}

