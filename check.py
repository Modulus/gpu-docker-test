import torch

def check_amd_gpu():
    if torch.cuda.is_available():
        print("CUDA is available. Checking for AMD GPU...")
        # Check for ROCm (AMD GPU)
        if torch.version.hip:
            print("AMD GPU with ROCm is available.")
        else:
            print("No AMD GPU found. CUDA is available but not ROCm.")
    else:
        print("No GPU available.")

check_amd_gpu()