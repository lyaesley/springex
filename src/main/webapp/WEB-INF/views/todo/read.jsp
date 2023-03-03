<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
</head>
<body>
<div class="container-fluid">
    <div class="row">

        <div class="row">
            <div class="col">
                <nav class="navbar navbar-expand-lg bg-body-tertiary">
                    <div class="container-fluid">
                        <a class="navbar-brand" href="#">Navbar</a>
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarNav">
                            <ul class="navbar-nav">
                                <li class="nav-item">
                                    <a class="nav-link active" aria-current="page" href="#">Home</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#">Features</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#">Pricing</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link disabled">Disabled</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>
            </div>
        </div>

        <div class="row content">
            <div class="col">
                <div class="card">
                    <div class="card-header">
                        Featured
                    </div>
                    <div class="card-body">
                        <div class="input-group mb-3">
                            <span class="input-group-text">Tno</span>
                            <input type="text" name="tno" class="form-control" value="<c:out value="${dto.tno}"/>" readonly>
                        </div>
                        <div class="input-group mb-3">
                            <span class="input-group-text">Title</span>
                            <input type="text" name="title" class="form-control" value="<c:out value="${dto.title}"/>" readonly>
                        </div>

                        <div class="input-group mb-3">
                            <span class="input-group-text">DueDate</span>
                            <input type="date" name="dueDate" class="form-control" value="<c:out value="${dto.dueDate}"/>" readonly>
                        </div>

                        <div class="input-group mb-3">
                            <span class="input-group-text">Writer</span>
                            <input type="text" name="writer" class="form-control" placeholder="Writer" value="<c:out value="${dto.writer}"/>" readonly>
                        </div>

                        <div class="form-check">
                            <label class="form-check-label">
                                Finished &nbsp;
                            </label>
                            <input class="form-check-input" type="checkbox" name="finished" ${dto.finished?"checked":""} disabled>
                        </div>

                        <div class="my-4">
                            <div class="float-end">
                                <button type="button" class="btn btn-primary">Modify</button>
                                <button type="button" class="btn btn-secondary">List</button>
                            </div>
                        </div>

                        <script>
                            document.querySelector(".btn-primary").addEventListener("click", function(e) {
                                self.location = `/todo/modify?tno=${dto.tno}&${pageRequestDTO.link}`;
                            },false);

                            document.querySelector(".btn-secondary").addEventListener("click", function(e) {
                                self.location = "/todo/list?${pageRequestDTO.link}";
                            },false);
                        </script>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row footer">
        <div class="row fixed-bottom" style="z-index: -100">
            <footer class="py-1 my-1 ">
                <p class="text-center text-muted">Footer</p>
            </footer>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</body>
</html>


`\n<input id="sch_day" name="sch_day" type="hidden" value="2023-03-05"/>\n<div class="controls">\n
<a class="btn_reserve_prev" href="javascript:getCalender('2023','2','2023-02-01');">이전</a>\n <span
        class="title_month">2023년03월</span>\n <a class="btn_reserve_next"
                                                 href="javascript:getCalender('2023','4','2023-04-01');">다음</a>\n</div>\n<div class="box_wrap">\n
<div class="box_inner">\n
    <div class="left">\n
        <table border="0" cellpadding="0" cellspacing="0" class="caltable">\n
            <thead>\n
            <tr height="30">\n
                <th class="sun">일</th>
                \n
                <th>월</th>
                \n
                <th>화</th>
                \n
                <th>수</th>
                \n
                <th>목</th>
                \n
                <th>금</th>
                \n
                <th class="sat">토</th>
                \n
            </tr>
            \n
            </thead>
            \n
            <tbody>\n
            <tr height="30" class="date">\n
                <td class="mini prev"></td>
                \n
                <td class="mini prev"></td>
                \n
                <td class="mini prev"></td>
                \n
                <td class="mini wed ">\n<span class="closeday">1</span><span
                        class="end_txt">(예약마감)</span>\n
                </td>
                \n
                <td class="mini ">\n<span class="closeday">2</span>\n</td>
                \n
                <td class="mini ">\n<span class="closeday">3</span><span
                        class="end_txt">(예약마감)</span>\n
                </td>
                \n
                <td class="mini sat sat">\n<span class="closeday">4</span>\n</td>
                \n
            </tr>
            \n
            <tr height="30" class="date">\n
                <td class="mini sun dday">\n<span class="closeday">5</span>\n</td>
                \n
                <td class="mini ">\n<span class="closeday">6</span><span
                        class="end_txt">(예약마감)</span>\n
                </td>
                \n
                <td class="mini ">\n<span class="openday">7</span><span
                        class="end_txt">(예약마감)</span>\n
                </td>
                \n
                <td class="mini wed ">\n<span class="openday">8</span><span
                        class="end_txt">(예약가능)</span>\n
                </td>
                \n
                <td class="mini ">\n<span class="closeday">9</span>\n</td>
                \n
                <td class="mini ">\n<span class="openday">10</span><span
                        class="end_txt">(예약가능)</span>\n
                </td>
                \n
                <td class="mini sat sat">\n<span class="closeday">11</span>\n</td>
                \n
            </tr>
            \n
            <tr height="30" class="date">\n
                <td class="mini sun sun">\n<span class="closeday">12</span>\n</td>
                \n
                <td class="mini ">\n<span class="closeday">13</span>\n</td>
                \n
                <td class="mini ">\n<span class="closeday">14</span>\n</td>
                \n
                <td class="mini wed ">\n<span class="closeday">15</span>\n</td>
                \n
                <td class="mini ">\n<span class="closeday">16</span>\n</td>
                \n
                <td class="mini ">\n<span class="closeday">17</span>\n</td>
                \n
                <td class="mini sat sat">\n<span class="closeday">18</span>\n</td>
                \n
            </tr>
            \n
            <tr height="30" class="date">\n
                <td class="mini sun sun">\n<span class="closeday">19</span>\n</td>
                \n
                <td class="mini ">\n<span class="closeday">20</span>\n</td>
                \n
                <td class="mini ">\n<span class="closeday">21</span>\n</td>
                \n
                <td class="mini wed ">\n<span class="closeday">22</span>\n</td>
                \n
                <td class="mini ">\n<span class="closeday">23</span>\n</td>
                \n
                <td class="mini ">\n<span class="closeday">24</span>\n</td>
                \n
                <td class="mini sat sat">\n<span class="closeday">25</span>\n</td>
                \n
            </tr>
            \n
            <tr height="30" class="date">\n
                <td class="mini sun sun">\n<span class="closeday">26</span>\n</td>
                \n
                <td class="mini ">\n<span class="closeday">27</span>\n</td>
                \n
                <td class="mini ">\n<span class="closeday">28</span>\n</td>
                \n
                <td class="mini wed ">\n<span class="closeday">29</span>\n</td>
                \n
                <td class="mini ">\n<span class="closeday">30</span>\n</td>
                \n
                <td class="mini ">\n<span class="closeday">31</span>\n</td>
                \n
            </tbody>
            \n
        </table>
        \n
    </div>
    \n\t\t\n
    <div class="desc_time">\n <span>예약 가능 수를 표시합니다.</span>\n</div>
    \n\t\t\n
    <div class="right">\n
        <div class="head">\n <span class="tit">예약일 : 2023년 03월 05일</span>\n <span class="desc">시간을 선택하세요.</span>\n
        </div>
        \n
        <div class="lst">\n
            <ul class="bx-time">\n
                <li style="width:100%">예약할 수 있는 시간이 없습니다.</li>
            </ul>
            \n
        </div>
        \n
    </div>
    \n
</div>
\n</div>\n\n\x3C!--\x3Cscript>\n$(document).ready(function(){\n\t$(".wed a").on("click", function(){\n\t alert("수요일은 정인아 원장님이 진료합니다.");\n\t});\n});\n\x3C/script>-->\n\n`
