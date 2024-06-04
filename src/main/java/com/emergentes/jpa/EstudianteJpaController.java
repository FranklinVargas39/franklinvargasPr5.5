
package com.emergentes.jpa;


import com.emergentes.entidades.Estudiante;
import com.emergentes.repositorio.EstudianteRepositorio;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping("/estudiantes")
public class EstudianteJpaController {

    @Autowired
    private EstudianteRepositorio estudianteRepository;

    @GetMapping
    public String getAllEstudiantes(Model model) {
        List<Estudiante> estudiantes = estudianteRepository.findAll();
        model.addAttribute("estudiantes", estudiantes);
        return "estudiantes/lista";
    }

    @GetMapping("/{id}")
    public String getEstudianteById(@PathVariable Long id, Model model) {
        Optional<Estudiante> estudiante = estudianteRepository.findById(id);
        if (estudiante.isPresent()) {
            model.addAttribute("estudiante", estudiante.get());
            return "estudiantes/detalle";
        } else {
            return "error/404";
        }
    }

    @GetMapping("/nuevo")
    public String createEstudianteForm(Model model) {
        model.addAttribute("estudiante", new Estudiante());
        return "estudiantes/formulario";
    }

    @PostMapping
    public String createEstudiante(@ModelAttribute Estudiante estudiante) {
        estudianteRepository.save(estudiante);
        return "redirect:/estudiantes";
    }

    @GetMapping("/editar/{id}")
    public String updateEstudianteForm(@PathVariable Long id, Model model) {
        Optional<Estudiante> estudiante = estudianteRepository.findById(id);
        if (estudiante.isPresent()) {
            model.addAttribute("estudiante", estudiante.get());
            return "estudiantes/formulario";
        } else {
            return "error/404";
        }
    }

    @PostMapping("/actualizar/{id}")
    public String updateEstudiante(@PathVariable Long id, @ModelAttribute Estudiante estudianteDetails) {
        Optional<Estudiante> estudiante = estudianteRepository.findById(id);
        if (estudiante.isPresent()) {
            Estudiante estudianteToUpdate = estudiante.get();
            estudianteToUpdate.setNombre(estudianteDetails.getNombre());
            estudianteToUpdate.setApellidos(estudianteDetails.getApellidos());
            estudianteToUpdate.setEmail(estudianteDetails.getEmail());
            estudianteToUpdate.setFechaNacimiento(estudianteDetails.getFechaNacimiento());
            estudianteRepository.save(estudianteToUpdate);
            return "redirect:/estudiantes";
        } else {
            return "error/404";
        }
    }

    @GetMapping("/eliminar/{id}")
    public String deleteEstudiante(@PathVariable Long id) {
        estudianteRepository.deleteById(id);
        return "redirect:/estudiantes";
    }
}
