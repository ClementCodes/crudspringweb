package projet.demo.espace.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import projet.demo.espace.model.VisitorModel;
import projet.demo.espace.repositories.VisitoryRepository;

@Service
public class VisitorService {

    private VisitoryRepository VisitoryRepo;

    public VisitorService(VisitoryRepository initialVRepository) {

        this.VisitoryRepo = initialVRepository;
    }

    public List<VisitorModel> showallUser() {

        return VisitoryRepo.findAll();

    }

    public void createVisitor(VisitorModel newVisitor) {

        VisitoryRepo.save(newVisitor);
    }

    public VisitorModel getByIdVisitor(Long id) {

        Optional<VisitorModel> visitor = VisitoryRepo.findById(id);
        if (visitor.isPresent()) {
            return visitor.get();
        }

        return null;
    }

    public void updateAVisitor(VisitorModel newVisitor) {

        VisitoryRepo.save(newVisitor);
    }

    public void deleteById(Long id) {

        VisitoryRepo.deleteById(id);
    }
}
