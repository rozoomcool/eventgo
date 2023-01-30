package ru.itabrek.eventgo.repository;

import jakarta.transaction.Transactional;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import ru.itabrek.eventgo.entity.User;

import java.util.Optional;

@Repository
public interface UserRepository extends CrudRepository<User, Long> {

    Optional<User> findByNickname(String nickname);

    @Transactional
    @Modifying
    @Query("UPDATE User u SET u.email = ?1, u.phone = ?2 WHERE u.nickname = ?3")
    void update(String email, Long phone, String nickname);
}
