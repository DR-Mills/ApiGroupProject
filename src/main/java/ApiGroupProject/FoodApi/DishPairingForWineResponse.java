package ApiGroupProject.FoodApi;

import java.util.List;

import com.fasterxml.jackson.annotation.JsonProperty;

public class DishPairingForWineResponse {

	// this string is a combination of info from the WineDescriptionResponse API
	// call and a sentence constructed with the "List<String> pairings" below.
	// Although logic in the controller can be used to trim this string to our needs
	// and save us on "API Usage Cost", if no dish pairing is found, the system will
	// not return the description text so it has been omitted.
//	@JsonProperty("text")
//	private String text;

	@JsonProperty("pairings")
	private List<String> pairings;

//	public String getText() {
//		return text;
//	}
//
//	public void setText(String text) {
//		this.text = text;
//	}

	public List<String> getPairings() {
		return pairings;
	}

	public void setPairings(List<String> pairings) {
		this.pairings = pairings;
	}

}
