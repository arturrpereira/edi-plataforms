package com.ediplataform.crm.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ediplataform.crm.entities.Usuario;
import com.ediplataform.crm.repositories.UsuarioRepository;

@Service
public class UsuarioService {

    @Autowired
    private UsuarioRepository repository;

    public Usuario insert(Usuario obj) {
        return repository.save(obj);
    }
}
