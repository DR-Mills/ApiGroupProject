package ApiGroupProject.FoodApi;

import com.fasterxml.jackson.annotation.JsonProperty;

public class WineDescriptionResponse {

	@JsonProperty("wineDescription")
	private String wineDescription;

	public String getWineDescription() {
		return wineDescription;
	}

	public void setWineDescription(String wineDescription) {
		this.wineDescription = wineDescription;
	}
	
	
}
