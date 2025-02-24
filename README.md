# Inference Benchmarks
Apple M4 Max 48GB 16 Core 16-inch using LM Studio

| Size (B) | Speed (T/s) | Model          | Type | Quant  | Spec Dec |
|----------|------------|-----------------|------|--------|--------- |
| 1.5      | 282        | qwen 2.5        | MLX  | 4      | none     |
| 7        | 70         | qwen 2.5        | GUFF | Q4_K_M | none     |
| 7        | 91         | qwen 2.5        | MLX  | 4      | none     |
| 12       | 35         | wayfarer        | GUFF | Q6_K   | none     |
| 12       | 65         | wayfarer        | MLX  | 4      | none     |
| 12       | 45         | wayfarer        | MLX  | 6      | none     |
| 12       | 36         | wayfarer        | MLX  | 8      | none     |
| 14       | 36         | qwen 2.5        | GUFF | Q4_K_M | none     |
| 14       | 52         | qwen 2.5        | MLX  | 4      | none     |
| 14       | 55         | qwen 2.5        | MLX  | 4      | 1.5B     |
| 24       | 35         | mistral small 3 | MLX  | 4      | none     |
| 32       | 18         | qwen 2.5        | GUFF | Q4_K_M | none     |
| 32       | 23         | qwen 2.5        | MLX  | 4      | none     |
| 32       | 30         | qwen 2.5        | MLX  | 4      | 1.5B     |
| 32       | 26         | qwen 2.5 r1     | MLX  | 4      | 1.5B     |
| 32       | 34         | qwen 2.5 coder  | MLX  | 4      | 1.5B     |
| 70       | 12         | wayfarer large  | GUFF | Q2_K_S | none     |
| 70       | 15         | wayfarer large  | MLX  | 3      | none     |

# mlx convert and upload to huggingface
https://huggingface.co/docs/hub/en/mlx

https://huggingface.co/mlx-community

```bash
uv pip install huggingface_hub hf_transfer mlx_lm
uv run huggingface-cli login

just mlx_create "LatitudeGames/Wayfarer-Large-70B-Llama-3.3" "4 6 8" "/Users/elijahmcmorris/.cache/lm-studio/models"
# or
uv run mlx_lm.convert --hf-path LatitudeGames/Wayfarer-Large-70B-Llama-3.3 -q --q-bits 4 --upload-repo mlx-community/Wayfarer-Large-70B-Llama-3.3-4bit --mlx-path /Users/elijahmcmorris/.cache/lm-studio/models/mlx-community/Wayfarer-Large-70B-Llama-3.3-4bit
```
or use https://huggingface.co/spaces/mlx-community/mlx-my-repo

# License
All code in this repository is dual-licensed under either [License-MIT](./LICENSE-MIT) or [LICENSE-APACHE](./LICENSE-Apache) at your option. This means you can select the license you prefer. [Why dual license](https://github.com/bevyengine/bevy/issues/2373).
