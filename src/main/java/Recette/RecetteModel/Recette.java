package Recette.RecetteModel;

public class Recette {

	private int	id; 
	private String titre;
	private String ingredient ;
	private String etape1 ;
	private String etape2 ;
	private String etape3 ;

	
	public Recette( int id, String titre, String ingredient, String etape1, String etape2, String etape3) {
		this.id = id;
		this.titre = titre;
		this.ingredient = ingredient;
		this.etape1 = etape1;
		this.etape2 = etape2;
		this.etape3 = etape3;
	}


	public Recette( String titre, String ingredient, String etape1, String etape2, String etape3) {
		this.titre = titre;
		this.ingredient = ingredient;
		this.etape1 = etape1;
		this.etape2 = etape2;
		this.etape3 = etape3;

	}


	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitre() {
		return titre;
	}

	public void setTitre(String titre) {
		this.titre = titre;
	}

	public String getIngredient() {
		return ingredient;
	}

	public void setIngredient(String ingredient) {
		this.ingredient = ingredient;
	}

	public String getEtape1() {
		return etape1;
	}

	public void setEtape1(String etape1) {
		this.etape1 = etape1;
	}

	public String getEtape2() {
		return etape2;
	}

	public void setEtape2(String etape2) {
		this.etape2 = etape2;
	}

	public String getEtape3() {
		return etape3;
	}

	public void setEtape3(String etape3) {
		this.etape3 = etape3;
	}



	
	
}
