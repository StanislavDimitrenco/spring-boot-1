package com.spring2.sweater.repos;

import org.springframework.data.repository.CrudRepository;

import com.spring2.sweater.domain.Message;

import java.util.List;

public interface MessageRepo extends CrudRepository<Message, Integer> {
    List <Message> findByTag(String tag);

}
