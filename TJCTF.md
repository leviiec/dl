## WTMOO
- Đầu tiên em sẽ mở file chall bằng IDA Pro lên

![image](https://github.com/leviiec/dl/assets/128345171/1f03a47c-6588-4d4b-8a25-95e5496d2439)
- Nhìn vào thì các anh sẽ ko thấy gì hết vì nó toàn code ASM.

![image](https://github.com/leviiec/dl/assets/128345171/6b097779-e577-4e2f-9f24-4c4231fdefba)
- Đập vào mắt ta là dòng `` Enter text``. Em nghi đó là FLAG nên em bấm vào thử

![image](https://github.com/leviiec/dl/assets/128345171/02ccfe8f-c068-4bb6-a9d7-c67a9b8859af)

- Nhìn qua nhìn lại sẽ thấy 1 chuỗi nhìn co vẻ như là FLAG ``8.'8*{;8m33[o[3[3[%\")#*\\}``

- Giờ ko biết làm gì nên bấm ``Tab`` để chuyển từ code ASM sang code C
![image](https://github.com/leviiec/dl/assets/128345171/fb00b7f5-4f4a-4384-a472-114e4a7bc42e)

- Giờ đọc hiểu code hoy, ko hiểu là do bạn chưa học đủ nên trách bản thân bạn ko lo học

- Ta thay chuỗi s = chuỗi ``8.'8*{;8m33[o[3[3[%\")#*\\}`` và code thui

![image](https://github.com/leviiec/dl/assets/128345171/8ac6f089-6152-47f0-9374-4d8dc168560b)

- Sau đó nhấn F11 chạy chương trình này in ra FLAG
![image](https://github.com/leviiec/dl/assets/128345171/9c330c3d-1d57-4dc8-9bfd-15e075ab423e)

- Em code hơi ngu nên thiếu 2 dấu ngoặc giờ thêm 2 dấu ngoặc nữa là nó chính là FLAG

- ``tjctf{wtMoo0O0o0o0a7e8f}``

- Và đó là bài WTOO nhìn nó dễ nhma nó cũng ko dễ :))

## MAYBE
- Đầu tiên em cũng mở file chall bằng IDA Pro lên

![image](https://github.com/leviiec/dl/assets/128345171/edb43794-d016-41a1-af77-b7fad73b2e4d)

- Đập vào mắt là đống code ASM. Nhìn thấy dòng ``Enter your flag``.Em nghĩ đó là FLAG nên kick vào xem thử.

![image](https://github.com/leviiec/dl/assets/128345171/138758e3-1a99-4394-b4db-973894218374)

- Chỗ ``Flag`` thấy có dòng kí tự hex 

![image](https://github.com/leviiec/dl/assets/128345171/0a51794a-cbec-40d0-86a6-9fb3bccf6cc2)

- Xếp các kí tự thành 1 chuỗi ta được chuỗi ``121100150B483C120C44001051192E16031C42110A4A72560D7A744F00``

- Giờ ko biết làm gì nên bấm ``Tab`` thui để chuyển từ code ASM sang code C

![image](https://github.com/leviiec/dl/assets/128345171/bd37de9b-ddc8-4766-99bd-a4a2e8bc04cd)

- Giờ đọc code C.Cho chuỗi S = chuỗi ``121100150B483C120C44001051192E16031C42110A4A72560D7A744F00``.Rồi code theo điều kiện của bài ta có đc code.

![image](https://github.com/leviiec/dl/assets/128345171/c7fe556e-85de-4f3c-8c7f-e70c8ee4c169)

- Nhấn F11 để chạy chương trình 

![image](https://github.com/leviiec/dl/assets/128345171/37107887-7978-4c06-a92d-fea0778b2349)

- Nó in ra FLAG:``tjctf{cam3_saw_c0nqu3r3d98A24B5}``

- Bài này nhìn dễ nhưng mà chỉ khó phần code

- Tóm lại 2 bài trên không khó cũng không dễ pánh làm đc cũng là may mắn =))













