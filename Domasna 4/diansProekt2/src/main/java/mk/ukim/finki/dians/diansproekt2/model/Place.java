package mk.ukim.finki.dians.diansproekt2.model;


import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import lombok.Data;

@Data
@Entity
public class Place {
    @Id
    String name;
    String mkName;
    String category;
    @Column(length = 3000)
    String description;
    Float rating;
    String reviewCount;
    String phone;
    String website;
    String img;
    float lat;
    float lon;

    public String getName() {
        return name;
    }

}
