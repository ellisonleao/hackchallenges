import java.time.LocalDate;
import java.time.LocalDateTime;

class Gigasecond {
    private final LocalDateTime gigaDateTime;
    static final long GIGASECONDS = 1_000_000_000L;

    Gigasecond(LocalDate moment) {
        this(moment.atStartOfDay());
    }

    Gigasecond(LocalDateTime moment) {
        gigaDateTime = moment.plusSeconds(GIGASECONDS);
    }

    LocalDateTime getDateTime() {
        return gigaDateTime;
    }
}
