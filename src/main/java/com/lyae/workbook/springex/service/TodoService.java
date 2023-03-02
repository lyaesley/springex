package com.lyae.workbook.springex.service;

import com.lyae.workbook.springex.dto.TodoDTO;

import java.util.List;

public interface TodoService {
    void register(TodoDTO todoDTO);

    List<TodoDTO> getAll();

    TodoDTO getOne(Long tno);

    void delete(Long tno);
}
