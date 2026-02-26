# LUT 기반 왜곡 보정 전처리 + DPU 통합 실시간 차선 검출 Vision SoC 프로젝트
<img width="590" height="266.5" alt="image" src="https://github.com/user-attachments/assets/a00b0519-c65b-43cc-a994-394c93a2be51" />
<img width="218" height="267.5" alt="image" src="https://github.com/user-attachments/assets/98de170d-aa76-4132-a623-c12c66e83f08" />


## 프로젝트 소개
Ultra96v2(Zynq UltraScale+ MPSoC) 기반 임베디드 비전 시스템에서,
fisheye 왜곡 보정 전처리와 DPU 기반 차선 검출 추론을 통합한 프로젝트입니다.

### 프로젝트 핵심:
- PL(Programmable Logic)에서 LUT 기반 스트리밍 왜곡 보정 수행
- Vitis AI DPU(B1600) 기반 Tiny-YOLOv3 추론 가속
- 단일 SoC에서 전처리 + 추론 통합으로 실시간 처리 달성

## 초록 (Abstract)
본 프로젝트는 시야각 약 180도의 fisheye 카메라를 사용하는 임베디드 비전 시스템에서,
비선형 왜곡으로 인한 정확도 저하와 전처리 연산 부담을 줄이기 위해 Zynq UltraScale+ MPSoC 기반
전처리-추론 통합 구조를 제안합니다. 일반 카메라(약 55도) 대비 fisheye 카메라는 넓은 시야로
사각지대를 줄이는 장점이 있지만, 왜곡 보정 연산 비용이 큽니다. 이를 해결하기 위해 PL 영역에서
사전 계산된 픽셀 매핑 테이블을 LUT로 사용해 remapping을 수행하여 복잡한 런타임 비선형 연산을
대체했고, 동시에 Vitis AI DPU(B1600)에서 Tiny-YOLOv3 추론을 가속했습니다.
구현 결과 end-to-end 처리량은 약 33.3 FPS였으며,
100 MHz 동작 주파수에서 타이밍 제약을 만족하여 안정적으로 동작함을 확인했습니다.

## 프로젝트 개요
- 플랫폼: Ultra96v2
- 기준 툴 버전: Vivado `2022.1`
- RTL 체인: `axis_resize_half -> bram_con -> bram -> fisheye_reader_stream`
- LUT 메모리: `map_x.mem`, `map_y.mem`
- 검증 방식: 1. Testbench (이미지 -> HEX -> RTL 시뮬레이션 -> HEX -> 이미지) 2. ILA

## 프로젝트 설명
프로젝트의 구체적인 구현 내용(RTL 상세, 검증 신호 파형 등)은 `2025_2학기_URP_최종 발표.pptx`를 참고해주세요.

## 구현 결과 (Experiment Results)

### 핵심 성과 요약
- **최종 FPGA 자원 활용**: LUT **92.56%**, BRAM **95.14%**, DSP **90.56%**로 한정된 FPGA 자원 내에서 **전처리 + 추론 파이프라인**을 통합 구현
- **End-to-End 성능(640×480 RGB)**: 프레임당 **약 30 ms** 처리로 **33.3 FPS** 달성
- **정상 동작 검증**: 하드웨어 전처리(왜곡 보정/리사이즈) -> DPU 추론 -> 후처리/시각화까지 **실시간 스트리밍 파이프라인**으로 안정 동작 및 주행 성공



### 1) 최종 자원 사용률 (Final Resource Utilization)

| Resource | Utilization | Available | Utilization % |
|---|---:|---:|---:|
| LUT | 65312 | 70560 | 92.56 |
| LUTRAM | 4581 | 28800 | 15.91 |
| FF | 74791 | 141120 | 53.00 |
| BRAM | 205.50 | 216 | 95.14 |
| DSP | 326 | 360 | 90.56 |

- **LUT 기반 왜곡 보정 테이블 + 프레임 버퍼 + FIFO + DPU**를 단일 PL 영역에 통합하여, 제한된 FPGA 자원 내에서 **전처리 + 추론 파이프라인**을 구현함
  -> 결과적으로 **자원 제약이 큰 임베디드 FPGA 환경에서 전처리와 추론을 동시에 수용** 가능함을 보였습니다.



### 2) End-to-End 처리 성능 (FPS)

**입력 조건**: 640 × 480 RGB 기준

| Metric | Without OpenCV | With OpenCV | Proposed System |
|---|---:|---:|---:|
| Processing Time (s) | 1.2 | 0.18 | 0.030 |
| FPS | 0.8 | 5.5 | 33.3 |

**해석**
- PS 기반 방식은 **왜곡 보정 + 추론을 순차 처리**하여 프레임당 처리 시간이 길고, 실시간 동작이 어렵습니다.
- OpenCV 가속을 적용해도 **5.5 FPS** 수준으로 제한됩니다.
- 저희의 시스템은 왜곡 보정 전처리를 **PL에서 수행**하고, 이를 **DPU 추론 파이프라인과 통합**하여 프레임당 **약 30 ms(33.3 FPS)**를 달성했습니다.  
  -> Vision SoC 파이프라인에서 **PS 병목을 제거**해 전체 처리 효율을 크게 개선했습니다.



### 3) 차선 검출 추론 결과 (Lane Detection Inference Results)

<img width="381.67" height="170.83" alt="image" src="https://github.com/user-attachments/assets/927741e2-8eba-4efc-aa58-88ff321a768b" />

- 입력 데이터가 **하드웨어 전처리(리사이즈/왜곡 보정)** -> **DPU 추론** -> **후처리 및 시각화**까지 **연속 처리**됨을 확인했습니다.
- 실시간 스트리밍 조건에서 엔드투엔드로 정상 동작함을 보여줍니다.


## 저장소 구조

```text
Automation-Lab-URP-Automotive-Vision-SoC/
|- README.md
|- .gitignore
|- prj/                 # Vivado 프로젝트(.xpr/.runs/.gen)
|- .local/              # 로컬 캐시
|- hw/
|  |- rtl/              # 구현 RTL
|  |- bd/               # Block Design 원본
|  |- constraints/      # XDC
|  `- mem/              # map_x.mem, map_y.mem
|- ip_repo/             # 사용자 IP(PWM/module_ref 등)
|- board/               # Ultra96v2 board files
|- scripts/
|  `- open_project.tcl
|- testbench/
|  |- README.md
|  |- rtl/
|  |- scripts/
|  `- vectors/
`- 2025_2학기_URP_최종 발표.pptx
```

## 실행 방법
### Vivado 프로젝트 열기
1. Vivado `2022.1` 실행
2. `prj/prj.xpr` 열기

또는 Tcl 콘솔:

```tcl
source scripts/open_project.tcl
```

## RTL 검증(Testbench)
상세 문서: `testbench/README.md`

검증 흐름:
1. 왜곡 입력 이미지(`640x480`)를 HEX로 변환(img_to_hex.py 실행)
2. RTL 시뮬레이션으로 결과 HEX(`320x240`) 생성
3. 결과 HEX를 이미지로 복원(hex_to_img.py 실행)
4. 복원 결과를 시각적으로 확인
