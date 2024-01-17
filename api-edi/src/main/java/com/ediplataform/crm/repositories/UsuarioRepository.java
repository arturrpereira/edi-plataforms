package com.ediplataform.crm.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ediplataform.crm.entities.Usuario;

public interface UsuarioRepository extends JpaRepository<Usuario, Long> {
    
}
