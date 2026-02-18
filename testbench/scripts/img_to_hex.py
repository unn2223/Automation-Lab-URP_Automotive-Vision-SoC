from pathlib import Path

import cv2
import numpy as np


def image_to_hex(img_path: Path, out_path: Path) -> None:
    raw = np.fromfile(str(img_path), dtype=np.uint8)
    img = cv2.imdecode(raw, cv2.IMREAD_COLOR)
    if img is None:
        raise FileNotFoundError(f"Cannot open image: {img_path}")

    h, w, _ = img.shape
    print(f"[INFO] Loaded image: {img_path.name} ({w}x{h})")

    with out_path.open("w", encoding="ascii") as f:
        for y in range(h):
            for x in range(w):
                b, g, r = img[y, x]
                f.write(f"{r:02x}{g:02x}{b:02x}\n")

    print(f"[INFO] Saved HEX file: {out_path}")


def main() -> None:
    script_dir = Path(__file__).resolve().parent
    tb_root = script_dir.parent
    input_image_dir = tb_root / "vectors" / "input_images"
    input_hex_dir = tb_root / "vectors" / "input_hex"
    input_hex_dir.mkdir(parents=True, exist_ok=True)

    image_files = sorted(input_image_dir.glob("front_*.jpg"))
    if not image_files:
        print(f"[ERROR] No front_*.jpg files found in: {input_image_dir}")
        return

    for img_path in image_files:
        out_path = input_hex_dir / f"{img_path.stem}.hex"
        image_to_hex(img_path, out_path)


if __name__ == "__main__":
    main()
