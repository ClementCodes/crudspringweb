package projet.demo.espace.controllers;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import projet.demo.espace.model.VisitorModel;
import projet.demo.espace.services.VisitorService;

@Controller
public class VisitorController {
    private VisitorService visitorSer;

    public VisitorController(VisitorService initialVisitorSer) {

        this.visitorSer = initialVisitorSer;
    }

    @GetMapping("/visitorwelcomescreen")
    public String ShowWelcomecreen() {

        // System.out.println("i waas here in the controller");
        return "index";
    }

    @GetMapping("/visitor")
    public String ShowAllVisitors(Model model) {
        model.addAttribute("listOfVisitors", visitorSer.showallUser());
        // System.out.println("i waas here in the controller");
        return "viewVisitors";
    }

    @GetMapping("/registrationViewPage")
    public String registrationViewForm(@ModelAttribute("visitorObject") VisitorModel visitor) {
        return "registerVisitor";
    }

    // recuperaation des visitors via la methode post et ses inputs via le
    // modelAttribute visitorObject et les path formLabel du fichier
    // registerVisitor.jsp
    @PostMapping("/register")
    public String registerVisitor(@Valid @ModelAttribute("visitorObject") VisitorModel newVisitor,
            BindingResult result) {

        if (result.hasErrors()) {

            return "registerVisitor";
        }
        visitorSer.createVisitor(newVisitor);
        return "redirect:/visitor";
    }

    // La méthode GET est un moyen de passer des paramètres d'une requête HTTP
    // depuis le navigateur au serveur.Cette méthode place les paramètres,
    // généralement séparés par un caractère spécial tel que l'esperluette (&), dans
    // l'URL même, qui est visible pour la personne qui utilise le navigateur
    // récuperation de l id via la methode get avec son pathVariable
    @GetMapping("editview/{id}")
    public String viewAVisitorById(@PathVariable("id") Long id, Model model) {

        VisitorModel aVisitor = visitorSer.getByIdVisitor(id);
        model.addAttribute("aSingleVisitorObject", aVisitor);
        return "editVisitor";
    }

    // Pour soummetre les modification en fonction de l id on fait un postMapping

    @PostMapping("/edit/{id}")
    public String editAVisitor(@PathVariable("id") Long id,
            @Valid @ModelAttribute("aSingleVisitorObject") VisitorModel updateCurrentUser, BindingResult result) {
        if (result.hasErrors()) {
            return "editVisitor";
        }
        visitorSer.updateAVisitor(updateCurrentUser);
        return "redirect:/visitor";

    }

    @PostMapping("/remove/{id}")
    public String removeAVisitor(@PathVariable("id") Long id) {
        visitorSer.deleteById(id);
        ;
        return "redirect:/visitor";
    }

}
