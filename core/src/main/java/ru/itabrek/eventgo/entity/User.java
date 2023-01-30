package ru.itabrek.eventgo.entity;

import jakarta.persistence.*;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.validator.constraints.Length;
import org.springframework.format.annotation.NumberFormat;

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

    @Column(name = "nickname", nullable = false, length = 24, unique = true)
    @NotBlank(message = "INCORRECT NICKNAME")
    @Length(min = 4, max = 24, message = "INCORRECT LENGTH OF NICKNAME")
    private String nickname;

    @Column(name = "firstname", nullable = false, length = 24)
    @NotBlank(message = "INCORRECT NICKNAME")
    @Length(min = 2, max = 24, message = "INCORRECT LENGTH OF FIRSTNAME")
    private String firstname;

    @Column(name = "firstname", nullable = false, length = 24)
    @NotBlank(message = "INCORRECT NICKNAME")
    @Length(min = 2, max = 24, message = "INCORRECT LENGTH OF LASTNAME")
    private String lastname;

    @Email(message = "INCORRECT EMAIL")
    private String email;

    @Column(name = "password", nullable = false, length = 16)
    @NotBlank(message = "INCORRECT PASSWORD")
    @Length(min = 8, max = 16, message = "INCORRECT LENGTH OF PASSWORD")
    private String password;

    @NumberFormat
    private Long phone;

    @Enumerated(value = EnumType.STRING)
    private Role role;

    private Set<Long> attendedEvents;
}
