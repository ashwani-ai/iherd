package farmerprofile.validation.request;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import javax.validation.constraints.*;

@Data
@AllArgsConstructor(staticName = "build")
@NoArgsConstructor
public class UserRequest {
    @NotNull(message = "cattleid shouldn't be null")
    private int RFIDnumber;
    private String BREED;
    @NotBlank
    private String YIELD;
    @Min(18)
    @Max(60)
    private int age;
    @NotBlank
    private String LASTAIDATE;

    public @NotNull(message = "username shouldn't be null") String cattleId() {
        return null;
    }
}
