package mk.ukim.finki.dians.diansproekt2.repository;

import mk.ukim.finki.dians.diansproekt2.model.Place;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface PlaceRepository extends JpaRepository<Place, String> {
    //List<Place> findAll();
}
