package ApiGroupProject.FoodApi;

import java.util.List;

import com.fasterxml.jackson.annotation.JsonProperty;

public class WineRecommendationResponse {

	@JsonProperty("recommendedWines")
	private List<Wine> wineList;

	public List<Wine> getWineList() {
		return wineList;
	}

	public void setWineList(List<Wine> wineList) {
		this.wineList = wineList;
	}
	
	
}
