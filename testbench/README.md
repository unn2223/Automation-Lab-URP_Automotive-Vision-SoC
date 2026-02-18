# Testbench 검증 가이드

이 폴더는 `hw/rtl` 내부 RTL 모듈을 시뮬레이션으로 검증하기 위한 구성입니다.

검증 흐름:
1. 왜곡 입력 이미지(`.jpg`)를 HEX로 변환
2. RTL 시뮬레이션 실행
3. 시뮬레이션 결과 HEX를 이미지로 복원
4. 결과 이미지를 시각적으로 확인

## 폴더 구조

```text
testbench/
|- README.md
|- rtl/
|  |- testbench.v
|  `- top_for_testbench.v
|- scripts/
|  |- img_to_hex.py
|  |- run_xsim.tcl
|  `- hex_to_img.py
`- vectors/
   |- input_images/    # 입력 이미지 (front_*.jpg)
   |- input_hex/       # 입력 HEX (front_*.hex)
   |- sim_output_hex/  # 시뮬레이션 결과 HEX (result_*.hex)
   `- output_images/   # 결과 이미지 (result_*.png)
```

## 파일 역할
- `rtl/top_for_testbench.v`
- `hw/rtl` 모듈들을 테스트벤치 검증용으로 묶은 전용 top
- `rtl/testbench.v`
- 입력 HEX를 DUT로 전송하고, 출력 HEX를 파일로 저장하는 테스트벤치

## 사전 준비
- Vivado `2022.1`
- Python 3
- Python 패키지: `opencv-python`, `numpy`

## 스크립트 역할
- `scripts/img_to_hex.py`
- `vectors/input_images/front_*.jpg`를 `vectors/input_hex/front_*.hex`로 변환
- `scripts/run_xsim.tcl`
- RTL 컴파일/시뮬레이션을 실행해 `vectors/sim_output_hex/result_*.hex` 생성
- `scripts/hex_to_img.py`
- `vectors/sim_output_hex/result_*.hex`를 `vectors/output_images/result_*.png`로 복원

## Vivado GUI로 직접 시뮬레이션할 때
1. 시뮬레이션 시작 전 `vectors/input_hex/front_0.hex`, `front_1.hex`, `front_2.hex` 파일이 존재해야 합니다.
2. Vivado 시뮬레이터에서 재생(▶) 버튼의 `Run All`로 끝까지 수행해야 `vectors/sim_output_hex/result_*.hex`가 정상 생성됩니다.

## 파라미터/주의사항
- `rtl/testbench.v`는 기본 3프레임(`front_0~2`) 기준입니다.
- 입력 해상도는 `640x480`, 출력 해상도는 `320x240` 기준입니다.
- `scripts/hex_to_img.py`는 `result_*.hex`(320x240) 복원용입니다.
