# Inference Benchmarks
Apple M4 Max 48GB 16 Core 16-inch using LM Studio

| Size (B) | Speed (T/s)| Model           | Type | Quant  | Spec Dec  | Spec Quant |
|----------|------------|-----------------|------|--------|-----------|------------|
| 1.5      | 282        | qwen 2.5        | MLX  | 4      | -         | -          |
| 1.5      | 76         | qwen 2.5        | MLX  | 8      | -         | -          |
| 7        | 70         | qwen 2.5        | GUFF | Q4_K_M | -         | -          |
| 7        | 101        | qwen 2.5        | MLX  | 4      | -         | -          |
| 7        | 58         | qwen 2.5        | MLX  | 8      | -         | -          |
| 12       | 35         | wayfarer        | GUFF | Q6_K   | -         | -          |
| 12       | 65         | wayfarer        | MLX  | 4      | -         | -          |
| 12       | 45         | wayfarer        | MLX  | 6      | -         | -          |
| 12       | 36         | wayfarer        | MLX  | 8      | -         | -          |
| 14       | 36         | qwen 2.5        | GUFF | Q4_K_M | -         | -          |
| 14       | 52         | qwen 2.5        | MLX  | 4      | -         | -          |
| 14       | 55         | qwen 2.5        | MLX  | 4      | 1.5B      | 4          |
| 14       | 30         | qwen 2.5        | MLX  | 8      | -         | -          |
| 24       | 35         | mistral small 3 | MLX  | 4      | -         | -          |
| 32       | 18         | qwen 2.5        | GUFF | Q4_K_M | -         | -          |
| 32       | 23         | qwen 2.5        | MLX  | 4      | -         | -          |
| 32       | 30         | qwen 2.5        | MLX  | 4      | 1.5B      | 4          |
| 32       | 34         | qwen 2.5        | MLX  | 4      | 1.5B      | 8          |
| 32       | 26         | qwen 2.5 r1     | MLX  | 4      | 1.5B      | 4          |
| 32       | 33         | qwen 2.5 coder  | MLX  | 4      | 1.5B      | 4          |
| 32       | 31         | qwen 2.5 coder  | MLX  | 4      | 3B        | 4          |
| 32       | 25         | qwq             | MLX  | 3      | -         | -          |
| 32       | 24         | qwq             | MLX  | 4      | -         | -          |
| 32       | 18         | qwq             | MLX  | 4      | 1.5B      | 4          |
| 32       | 22         | qwq             | MLX  | 4      | 1.5B      | 8          |
| 32       | 16         | qwq             | MLX  | 4      | 7B        | 4          |
| 32       | 16         | qwq             | MLX  | 4      | 7B        | 8          |
| 32       | 16         | qwq             | MLX  | 6      | -         | -          |
| 32       | 16         | qwq             | MLX  | 6      | 1.5B      | 4          |
| 32       | 16         | qwq             | MLX  | 6      | 1.5B      | 8          |
| 70       | 12         | wayfarer large  | GUFF | Q2_K_S | -         | -          |
| 70       | 15         | wayfarer large  | MLX  | 3      | -         | -          |

# mlx convert and upload to huggingface
https://huggingface.co/docs/hub/en/mlx

https://huggingface.co/mlx-community

```bash
uv venv
uv pip install huggingface_hub hf_transfer mlx_lm
uv run huggingface-cli login

just mlx_create "Qwen/QwQ-32B" "3 4 6 8" "/Users/elijahmcmorris/.cache/lm-studio/models" "false"
# or
uv run mlx_lm.convert --hf-path Qwen/QwQ-32B -q --q-bits 4 --upload-repo mlx-community/QwQ-32B-4bit --mlx-path /Users/elijahmcmorris/.cache/lm-studio/models/mlx-community/QwQ-32B-4bit
```
or use https://huggingface.co/spaces/mlx-community/mlx-my-repo

# License
All code in this repository is dual-licensed under either [License-MIT](./LICENSE-MIT) or [LICENSE-APACHE](./LICENSE-Apache) at your option. This means you can select the license you prefer. [Why dual license](https://github.com/bevyengine/bevy/issues/2373).
