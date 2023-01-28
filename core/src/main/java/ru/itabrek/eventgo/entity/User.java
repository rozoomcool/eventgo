package ru.itabrek.eventgo.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Set;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "user")
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String nickname;
    private String firstname, lastname, email, password;
    private Long phone;
    @Enumerated(value = EnumType.STRING)
    private Role role;
    private Set<Long> attendedEvents;
}
