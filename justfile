# just mlx_create "LatitudeGames/Wayfarer-Large-70B-Llama-3.3" "4 6 8" "/Users/elijahmcmorris/.cache/lm-studio/models"
mlx_create hf_url quant lm_studio_path:
    #!/usr/bin/env bash
    for q in {{quant}}; do
        echo -e '\nConverting {{hf_url}} to '"$q"'-bit quantization\n'
        repo_name=$(basename {{hf_url}})
        rm {{lm_studio_path}}/mlx-community/${repo_name}-${q}bit
        uv run mlx_lm.convert \
            --hf-path {{hf_url}} \
            -q \
            --q-bits ${q} \
            --upload-repo mlx-community/${repo_name}-${q}bit \
            --mlx-path {{lm_studio_path}}/mlx-community/${repo_name}-${q}bit
    done

clean_hf:
    rm -r ~/.cache/huggingface/hub/*
