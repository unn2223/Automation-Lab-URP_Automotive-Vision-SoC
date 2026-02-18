from pathlib import Path

import cv2
import numpy as np

WIDTH = 320
HEIGHT = 240


def save_image_unicode_safe(output_image_file: Path, image_array: np.ndarray) -> bool:
    ext = output_image_file.suffix or ".png"
    ok, encoded = cv2.imencode(ext, image_array)
    if not ok:
        return False
    encoded.tofile(str(output_image_file))
    return output_image_file.exists()


def hex_to_image(input_hex_file: Path, output_image_file: Path) -> None:
    try:
        with input_hex_file.open("r", encoding="utf-8") as f:
            hex_lines = f.readlines()
    except FileNotFoundError:
        print(f"[ERROR] File not found: {input_hex_file}")
        return

    rgb_pixels = []
    invalid_hex_count = 0

    for line in hex_lines:
        hex_value = line.strip()
        try:
            if len(hex_value) != 6:
                raise ValueError("Invalid hex length")
            r = int(hex_value[0:2], 16)
            g = int(hex_value[2:4], 16)
            b = int(hex_value[4:6], 16)
        except ValueError:
            r, g, b = 0, 0, 0
            invalid_hex_count += 1
        rgb_pixels.append([b, g, r])  # OpenCV uses BGR order

    if invalid_hex_count > 0:
        print(f"[WARN] {input_hex_file.name}: invalid hex count = {invalid_hex_count}")

    expected_pixel_count = WIDTH * HEIGHT
    actual_pixel_count = len(rgb_pixels)

    if actual_pixel_count < expected_pixel_count:
        missing = expected_pixel_count - actual_pixel_count
        print(f"[WARN] {input_hex_file.name}: missing {missing} pixels, padded with black")
        rgb_pixels.extend([[0, 0, 0]] * missing)
    elif actual_pixel_count > expected_pixel_count:
        overflow = actual_pixel_count - expected_pixel_count
        print(f"[WARN] {input_hex_file.name}: extra {overflow} pixels, truncated")
        rgb_pixels = rgb_pixels[:expected_pixel_count]

    image_array = np.array(rgb_pixels, dtype=np.uint8).reshape((HEIGHT, WIDTH, 3))
    if save_image_unicode_safe(output_image_file, image_array):
        print(f"[OK] Saved: {output_image_file}")
    else:
        print(f"[ERROR] Failed to save image: {output_image_file}")


def main() -> None:
    script_dir = Path(__file__).resolve().parent
    tb_root = script_dir.parent
    sim_hex_dir = tb_root / "vectors" / "sim_output_hex"
    output_img_dir = tb_root / "vectors" / "output_images"
    output_img_dir.mkdir(parents=True, exist_ok=True)
    hex_files = sorted(sim_hex_dir.glob("result_*.hex"))

    if not hex_files:
        print(f"[ERROR] No result_*.hex files found in: {sim_hex_dir}")
        return

    for hex_file in hex_files:
        image_file = output_img_dir / f"{hex_file.stem}.png"
        hex_to_image(hex_file, image_file)


if __name__ == "__main__":
    main()
