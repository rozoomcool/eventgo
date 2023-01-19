package ru.itabrek.eventgo.entity;

import jakarta.persistence.*;
import lombok.*;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "events")
public class Event {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String title;
    @Column(name = "event_type")
    @Enumerated(value = EnumType.STRING)
    private EventType eventType;
    private Integer total;
}
