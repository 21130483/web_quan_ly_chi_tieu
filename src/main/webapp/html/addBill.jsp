<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../css/addBill.css">

</head>

<body>
<jsp:include page="header.jsp"></jsp:include>

    <section class="main">
        <section class="title">
            Thêm hóa đơn
        </section>

        <section class="type">
            <button class="button choose">
                <img class="icon" src="assets/image/spending.png">
                Chi tiêu
            </button>
            <button class="button">
                <img class="icon" src="assets/image/salary.png">
                Thu nhập
            </button>
        </section>

        <!-- <section>
            <ul class="contents">
                <li class="box">
                    <button class="content choose">
                        <img class="icon" src="assets/image/chi/hamburger.png">
                        Đồ ăn
                    </button>
                </li>

                <li class="box">
                    <button class="content">
                        <img class="icon" src="assets/image/chi/bus.png">
                        Xe buýt
                    </button>
                </li>

                <li class="box">
                    <button class="content">
                        <img class="icon" src="assets/image/chi/house.png">
                        Nhà ở
                    </button>
                </li>

                <li class="box">
                    <button class="content">
                        <img class="icon" src="assets/image/chi/education.png">
                        Giáo dục
                    </button>
                </li>

                <li class="box">
                    <button class="content">
                        <img class="icon" src="assets/image/chi/giftbox.png">
                        Quà cáp
                    </button>
                </li>

                <li class="box">
                    <button class="content">
                        <img class="icon" src="assets/image/chi/tocador.png">
                        Hằng ngày
                    </button>
                </li>

                <li class="box">
                    <button class="content">
                        <img class="icon" src="assets/image/chi/baby-girl.png">
                        Em bé
                    </button>
                </li>

                <li class="box">
                    <button class="content">
                        <img class="icon" src="assets/image/chi/pets.png">
                        Thú cưng
                    </button>
                </li>
            </ul>
        </section> -->
        <form action="">

            <section>
                <div class="contents">
                    <div class="radio-group box">
                        <input type="radio" id="option1" name="customRadio" value="option1">
                        <label class="content" for="option1">
                            <img class="icon" src="assets/image/chi/hamburger.png" alt="Option 1 Image">
                            <span>Đồ ăn</span>
                        </label>
                    </div>

                    <div class="radio-group box">
                        <input type="radio" id="option2" name="customRadio" value="option2">
                        <label class="content" for="option2">
                            <img class="icon" src="assets/image/chi/bus.png" alt="Option 2 Image">
                            <span>Xe buýt</span>
                        </label>
                    </div>

                    <div class="radio-group box">
                        <input type="radio" id="option3" name="customRadio" value="option2">
                        <label class="content" for="option3">
                            <img class="icon" src="assets/image/chi/house.png" alt="Option 3 Image">
                            <span>Nhà ở</span>
                        </label>
                    </div>


                    <div class="radio-group box">
                        <input type="radio" id="option4" name="customRadio" value="option2">
                        <label class="content" for="option4">
                            <img class="icon" src="assets/image/chi/education.png" alt="Option 4 Image">
                            <span>Giáo dục</span>
                        </label>
                    </div>


                    <div class="radio-group box">
                        <input type="radio" id="option5" name="customRadio" value="option2">
                        <label class="content" for="option5">
                            <img class="icon" src="assets/image/chi/giftbox.png" alt="Option 5 Image">
                            <span>Quà cáp</span>
                        </label>
                    </div>

                    <div class="radio-group box">
                        <input type="radio" id="option6" name="customRadio" value="option2">
                        <label class="content" for="option6">
                            <img class="icon" src="assets/image/chi/tocador.png" alt="Option 6 Image">
                            <span>Hằng ngày</span>
                        </label>
                    </div>

                    <div class="radio-group box">
                        <input type="radio" id="option7" name="customRadio" value="option2">
                        <label class="content" for="option7">
                            <img class="icon" src="assets/image/chi/baby-girl.png" alt="Option 7 Image">
                            <span>Em bé</span>
                        </label>
                    </div>

                    <div class="radio-group box">
                        <input type="radio" id="option8" name="customRadio" value="option2">
                        <label class="content" for="option8">
                            <img class="icon" src="assets/image/chi/pets.png" alt="Option 8 Image">
                            <span>Thú cưng</span>
                        </label>
                    </div>

                </div>
            </section>

            <section class="infos">
                <section class="info">
                    <p>Ngày</p>

                    <input class="input" type="date" id="dateInput">
                </section>

                <section class="info">
                    <p>Số tiền</p>
                    <input class="input" type="number" style="border-right: none;padding-right: 0;">
                    <div class="input" style="border-left: none;">
                        Đồng
                    </div>
                </section>
            </section>


            <section class="access">
                <button type="submit">Thêm hóa đơn</button>
                <button>Hủy</button>
            </section>
        </form>




    </section>


<jsp:include page="footer.jsp"></jsp:include>


    <script>
        // JavaScript để đặt giá trị mặc định cho input date
        document.addEventListener('DOMContentLoaded', (event) => {
            const dateInput = document.getElementById('dateInput');
            const today = new Date();
            const yyyy = today.getFullYear();
            let mm = today.getMonth() + 1; // Tháng trong JavaScript được đánh số từ 0-11, nên cần +1
            let dd = today.getDate();

            // Đảm bảo tháng và ngày có hai chữ số
            if (dd < 10) dd = '0' + dd;
            if (mm < 10) mm = '0' + mm;

            const todayString = `${yyyy}-${mm}-${dd}`;
            dateInput.value = todayString;
        });
    </script>
</body>

</html>