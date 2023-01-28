package ru.itabrek.eventgo.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import ru.itabrek.eventgo.entity.Event;

@Repository
public interface EventRepository extends CrudRepository<Event, Long> {
}
