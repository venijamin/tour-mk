package mk.ukim.finki.dians.diansproekt2.repository;

import mk.ukim.finki.dians.diansproekt2.model.Place;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface PlaceRepository extends JpaRepository<Place, String> {
    List<Place> findAllByNameLikeAndCategoryLikeAndRatingGreaterThanEqual(String name, String category, Float rating);
    List<Place> findAllByNameLikeAndRatingGreaterThanEqual(String name, Float rating);
    List<Place> findAllByCategoryLikeAndRatingGreaterThanEqual(String category, Float rating);
    List<Place> findAllByNameLikeAndCategoryLike(String name, String category);
    List<Place> findAllByNameLike(String name);
    List<Place> findAllByCategoryLike(String category);
    List<Place> findAllByRatingGreaterThanEqual(Float rating);
}
