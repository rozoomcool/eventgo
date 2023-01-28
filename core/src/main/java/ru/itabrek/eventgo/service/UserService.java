package ru.itabrek.eventgo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ru.itabrek.eventgo.entity.User;
import ru.itabrek.eventgo.repository.UserRepository;

@Service
public class UserService {

    @Autowired
    private UserRepository repo;

    public boolean saveUser(User user){
        try{
            repo.save(user);
            return true;
        }catch(Exception e){
            return false;
        }
    }

    public boolean updateUser(User user, Long id){
        try{
            repo.update(user.getEmail(), user.getPhone(), user.getNickname());
            return true;
        }catch(Exception e){
            return false;
        }
    }

    public User findUserByNickname(String nickname){
        return repo.findUserByNickname(nickname).orElseThrow();
    }

}
