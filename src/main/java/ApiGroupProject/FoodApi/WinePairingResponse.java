package ApiGroupProject.FoodApi;

import java.util.List;

import com.fasterxml.jackson.annotation.JsonProperty;

public class WinePairingResponse {

	@JsonProperty("pairedWines")
	private List<String> pairedWines;
	
	@JsonProperty("pairingText")
	private String pairingText;

	public List<String> getPairedWines() {
		return pairedWines;
	}

	public void setPairedWines(List<String> pairedWines) {
		this.pairedWines = pairedWines;
	}

	public String getPairingText() {
		return pairingText;
	}

	public void setPairingText(String pairingText) {
		this.pairingText = pairingText;
	}
	

}
