package farmerprofile.validation.models;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.validation.constraints.NotNull;

import org.springframework.data.mongodb.core.mapping.Document;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Document(collection = "users")
public class User {
    private int id;
    private int cattleId;
    private int RFIDnumber;
    private String breed;
    private String age;
    private int yield;
    private String lastAIDATE;

    public static User build(int i, @NotNull(message = "username shouldn't be null") String name2, String gender2,
            int age2, @NotNull(message = "cattleid shouldn't be null") int j, String associatedorganization2) {
        return null;
    }

}
