package ApiGroupProject.FoodApi;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

import com.fasterxml.jackson.annotation.JsonProperty;

@Document("food")
public class Wine {

	@Id
	@JsonProperty("id")
	private int id;
	
	@JsonProperty("title")
	private String title;
	
	@JsonProperty("averageRating")
	private double averageRating;
	
	@JsonProperty("description")
	private String description;
	
	@JsonProperty("imageUrl")
	private String imageUrl;
	
	@JsonProperty("price")
	private String price;
	
	

	public Wine() {
	}

	public Wine(int id, String title, double averageRating, String description, String price) {
		this.id = id;
		this.title = title;
		this.averageRating = averageRating;
		this.description = description;
		this.price = price;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public double getAverageRating() {
		return averageRating;
	}

	public void setAverageRating(double averageRating) {
		this.averageRating = averageRating;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getImageUrl() {
		return imageUrl;
	}

	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}
	
	
}
