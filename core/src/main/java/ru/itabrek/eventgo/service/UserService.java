package ru.itabrek.eventgo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ru.itabrek.eventgo.entity.User;
import ru.itabrek.eventgo.exception.UnitAlreadyExistException;
import ru.itabrek.eventgo.exception.UnitNotFoundException;
import ru.itabrek.eventgo.repository.UserRepository;

@Service
public class UserService {

    @Autowired
    private UserRepository repo;

    public boolean saveUser(User user) throws UnitAlreadyExistException {
        if(repo.findByNickname(user.getNickname()) != null){
            throw new UnitAlreadyExistException("USER_ALREADY_EXIST");
        }
        repo.save(user);
        return true;
    }

    public boolean updateUser(User user, Long id) throws UnitNotFoundException {
        if(repo.findByNickname(user.getNickname()) == null){
            throw new UnitNotFoundException("USER_NOT_FOUND");
        }
        repo.update(user.getEmail(), user.getPhone(), user.getNickname());
        return true;
    }

    public User findUserByNickname(String nickname) throws UnitNotFoundException {
        User user = repo.findByNickname(nickname).get();
        if(user==null){
            throw new UnitNotFoundException("USER_NOT_FOUND");
        }
        return user;
    }

    public User findUserById(Long id) throws UnitNotFoundException {
        User user = repo.findById(id).get();
        if(user==null){
            throw new UnitNotFoundException("USER_NOT_FOUND");
        }
        return user;
    }

//    public Iterable<User> search(String arg){
//        return repo.search(arg);
//    }

    public Iterable<User> getAll(){
        return repo.findAll();
    }
}
