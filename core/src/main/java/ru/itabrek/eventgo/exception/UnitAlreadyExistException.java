package ru.itabrek.eventgo.exception;

public class UnitAlreadyExistException extends RuntimeException{
    public UnitAlreadyExistException(String message) {
        super(message);
    }
}
