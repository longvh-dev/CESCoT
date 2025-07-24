# Integrating Cause-awareness for Improving Emotional Support in Conversational AI

## Introduction

This project focuses on integrating cause-awareness to enhance emotional support in conversational AI systems. The goal is to enable AI not only to respond to emotions but also to understand and explain the underlying causes behind users' feelings, thereby providing more appropriate and effective support.

## Project Structure

```
ESCoT/
├── data/
│   ├── cot/
│   │   ├── train.json
│   │   ├── val.json
│   │   └── test.json
│   └── instructions/
│       ├── train_instruction.json
│       ├── val_instruction.json
│       └── test_instruction.json
├── scripts/
│   ├── supervised_finetune_llama2_cot.sh
│   ├── test_llama2_chat_sft_cot.sh
│   └── test_llama2_inference_cot.sh
├── supervised_finetuning_cot.py
├── test_llama2_chat_cot.py
├── test_llama2_inference_cot.py
├── requirements.txt
└── README.md
```

## CESD-CoT dataset sample

The CESD-CoT dataset, located in the `data/cot` directory, consists of three JSON files - train, val, and test. Each file follows a consistent structure with samples formatted as shown below:

```json
  {
    "id": 964,
    "original_data": {
      "dialog": [
        {
          "speaker": "supporter",
          "content": "Hello there, I’m here to listen and help you through this difficult time. Could you tell me more about what’s been going on?"
        },
        ...
        {
          "speaker": "seeker",
          "content": "It makes me feel so happy and emotional. I can't wait for that feeling to be real."
        }
      ],
      "strategy": "Reflection of Feelings",
      "response": "It sounds like you're feeling hopeful about the future despite the current challenges."
    },
    "cot_data": {
      "emotion": "The seeker feels overwhelmed and burdened.",
      "cause_emotion": "Because the seeker says they are worried about the success rates and financial burdens of assisted reproduction techniques, they have been feeling overwhelmed and burdened by their fertility issues.",
      "emotion_stimuli": "The seeker has discovered their fertility issues and the potential difficulty in conceiving naturally.",
      "individual_appraisal": "The seeker thinks that the situation is challenging and is unsure about the best treatment option. They are concerned about the success rates and financial burden associated with assisted reproduction techniques. The seeker also feels that the decision-making process is taking a toll on their mental health and their relationship with their partner.",
      "recognized_strategy": "Reflection of Feelings",
      "strategy_reason": "To acknowledge and validate the seeker's feelings of being overwhelmed and burdened by their fertility issues and the decision-making process, the supporter used the strategy of \"Reflection of Feelings\". By reflecting the seeker's emotions back to them, the supporter empathizes with their struggles and demonstrates understanding of the emotional toll this situation has taken on them. This strategy helps the seeker feel heard, validated, and supported, ultimately fostering a sense of comfort and trust in the supporter's guidance."
    }
  },
```

Additionally, we provide training data in instructional format within the `data/instructions` directory.


## Usage

### Download the pretrained models
Download the LLAMA2-7B-CHAT model from [Hugging Face](https://huggingface.co/meta-llama/Llama-2-7b-chat-hf). You will need to request access from Meta and link your Hugging Face account.



### Train the Model

Run the training script:

```bash
bash scripts/supervised_finetune_llama2_cot.sh
```

### Test Chat Model

```bash
bash scripts/test_llama2_chat_sft_cot.sh
```

### Test Inference Model

```bash
bash scripts/test_llama2_inference_cot.sh
```

## Contribution

If you would like to contribute to this project, please create a pull request or contact the development team.

## Acknowledgements

This project was inspired by and benefited from ideas and resources shared by several open-source repositories in the field of conversational AI and emotional support. In particular, we would like to acknowledge the work of Zhang et al. (2024) on [ESCoT: Towards Interpretable Emotional Support Dialogue Systems](https://aclanthology.org/2024.acl-long.723/). We would also like to thank the authors and contributors of these projects for their valuable work and for making their code and datasets publicly available. If you believe your work should be specifically credited here, please let us know!
