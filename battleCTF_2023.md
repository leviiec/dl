##SEYI

-Đầu tiên mở file bằng IDA lên, thấy hàm ``main`` 

![image](https://github.com/leviiec/dl/assets/128345171/5407bfec-4767-4b98-af6d-2c7a8cf200dd)

- Vào thử hàm `` get shell``
![image](https://github.com/leviiec/dl/assets/128345171/837e0764-3c89-4d66-b73e-4dd75e240b15)

 FLAG``battleCTF{The_path_to_light}``

 ##WELCOME
-Đầu tiên mở file bằng IDA lên
![image](https://github.com/leviiec/dl/assets/128345171/17a465da-29bd-40da-8647-262a0d44b912)

-Đọc code ASM ta thấy chuỗi hex ``522D1B20F6h`` cộng với chuỗi ``1EE2EEEEh`` rồi XOR với ``0AA84AAAh``
``
#include <iostream>
#include <cmath>
using namespace std;

int main() {
	long long a=0x522D1B20F6;
	long long b=0x1EE2EEEE;
	long long c=a+b;
	long long d=c^0x0AA84AAA;
	cout << d;
	return 0;
}
``
![image](https://github.com/leviiec/dl/assets/128345171/146199eb-397c-4d50-87ce-b2a8a6caf052)
``353283491150`` được chuỗi này bỏ vào web``kt.gy`` sẽ ra ``RAVEN``
FLAG:``battleCTF{RAVEN}

##CHECKER
-Đầu tiên mở file bằng IDA
![image](https://github.com/leviiec/dl/assets/128345171/f74f7c89-2bb8-44a9-994a-4ac0ca2d00ee)

-Mở ``String`` lên xem có chuỗi nào khum
![image](https://github.com/leviiec/dl/assets/128345171/232e8253-c932-4d9e-b7e3-17e9d7910453)

-``gfyyqjHYK{Flg4_d0z_i3d_xr0p3_1lg0?}`` thấy chuỗi này là mật mã Caesar, bỏ vào ``kt.gy``
![image](https://github.com/leviiec/dl/assets/128345171/31dd6f0f-d7a4-4408-add1-53f782bdc75f)

FLAG``battleCTF{Agb4_y0u_d3y_sm0k3_1gb0?}``

##MAZUI
-Đầu tiên mở file bằng IDA

