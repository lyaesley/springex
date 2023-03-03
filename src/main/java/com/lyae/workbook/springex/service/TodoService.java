package com.lyae.workbook.springex.service;

import com.lyae.workbook.springex.dto.PageRequestDTO;
import com.lyae.workbook.springex.dto.PageResponseDTO;
import com.lyae.workbook.springex.dto.TodoDTO;

public interface TodoService {
    void register(TodoDTO todoDTO);

//    List<TodoDTO> getAll();

    PageResponseDTO<TodoDTO> getList(PageRequestDTO pageRequestDTO);

    TodoDTO getOne(Long tno);

    void remove(Long tno);

    void modify(TodoDTO todoDTO);
}
