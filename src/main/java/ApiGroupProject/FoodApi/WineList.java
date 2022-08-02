package ApiGroupProject.FoodApi;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Document("winelist")
public class WineList {

	@Id
	private String id;
	private String wineName;
	private String wineCode;
	
	public WineList() {};
	
	public WineList(String id, String wineName, String wineCode) {
		this.id = id;
		this.wineName = wineName;
		this.wineCode = wineCode;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getWineName() {
		return wineName;
	}

	public void setWineName(String wineName) {
		this.wineName = wineName;
	}

	public String getWineCode() {
		return wineCode;
	}

	public void setWineCode(String wineCode) {
		this.wineCode = wineCode;
	}
		
}
