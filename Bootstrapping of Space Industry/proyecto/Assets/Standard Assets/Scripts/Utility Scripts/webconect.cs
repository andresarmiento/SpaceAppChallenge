using UnityEngine;
using System.Collections;

public class webconect : MonoBehaviour
{
	public webconect()
	{}
	
	public bool prueba(string User ,string Password)
	{ 
		WebServiceClient.WebServiceConsult WebService = new WebServiceClient.WebServiceConsult();
		
		return WebService.ValidateUser(User,Password);
	}
}

