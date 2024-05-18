package cz.czechitas.java2webapps.ukol3.controller;

import cz.czechitas.java2webapps.ukol3.entity.Vizitka;
import cz.czechitas.java2webapps.ukol3.service.VizitkaService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * Kontroler obsluhující zobrazování vizitek.
 */
@Controller
public class VizitkaController {
    private final VizitkaService service;

    public VizitkaController(VizitkaService service) {
        this.service = service;
    }

    @GetMapping("/")
    public ModelAndView seznam() {
        ModelAndView result = new ModelAndView("seznam");
        result.addObject("vizitky", service.getAll());
        return result;
    }

    @GetMapping("/detail/{id}")
    public ModelAndView detail(@PathVariable int id) {
        ModelAndView result = new ModelAndView("detail");
        result.addObject("vizitka", service.getById(id));
        result.addObject("id", id);
        return result;
    }

    @GetMapping("/nova")
    public ModelAndView nova() {
        ModelAndView result = new ModelAndView("nova");
        result.addObject("vizitka", new Vizitka());
        return result;
    }

    @PostMapping("/nova")
    public String nova(Vizitka form) {
        if (form.getJmeno() == null || form.getFirma() == null || form.getUlice() == null || form.getObecPsc() == null) {
            throw new IllegalArgumentException("All fields must be filled");
        }
        service.add(form);
        return "redirect:/";
    }

    @PostMapping("/detail/{id}")
    public String delete(@PathVariable int id) {
        service.delete(id);
        return "redirect:/";
    }

}
