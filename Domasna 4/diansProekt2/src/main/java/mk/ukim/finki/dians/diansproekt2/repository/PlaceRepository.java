package mk.ukim.finki.dians.diansproekt2.repository;

import mk.ukim.finki.dians.diansproekt2.model.Place;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface PlaceRepository extends JpaRepository<Place, String> {
    List<Place> findAllByNameIgnoreCaseLikeAndCategoryIgnoreCaseLikeAndRatingGreaterThanEqual(String name, String category, Float rating);
    List<Place> findAllByNameIgnoreCaseLikeAndRatingGreaterThanEqual(String name, Float rating);
    List<Place> findAllByCategoryIgnoreCaseLikeAndRatingGreaterThanEqual(String category, Float rating);
    List<Place> findAllByNameIgnoreCaseLikeAndCategoryIgnoreCaseLike(String name, String category);
    List<Place> findAllByNameIgnoreCaseLike(String name);
    List<Place> findAllByCategoryIgnoreCaseLike(String category);
    List<Place> findAllByRatingGreaterThanEqual(Float rating);
}
