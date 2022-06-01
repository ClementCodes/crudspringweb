package projet.demo.espace.repositories;

import java.util.List;
import java.util.Optional;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import projet.demo.espace.model.VisitorModel;

@Repository
public interface VisitoryRepository extends CrudRepository<VisitorModel, Long> {

    List<VisitorModel> findAll();

    Optional<VisitorModel> findById(Long id);
}
