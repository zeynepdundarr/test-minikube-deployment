# RAG Chatbot

This is a sample backend skeleton for a chatbot application using the Retrieval-Augmented Generation (RAG) framework. It uses FastAPI for the web framework.

## Project Structure

```
app/
├── __init__.py
├── main.py
├── config.py
├── models/
│   ├── __init__.py
│   ├── request_models.py
│   └── response_models.py
├── services/
│   ├── __init__.py
│   ├── data_retrieval.py
│   ├── response_generation.py
│   └── chatbot.py
└── utils/
    ├── __init__.py
    └── chromadb_client.py

data/
├── documents/
└── embeddings/

requirements.txt
README.md
```

## Setup

1. **Create a virtual environment and install dependencies:**
   ```sh
   python -m venv venv
   source venv/bin/activate  # On Windows use `venv\Scripts\activate`
   pip install -r requirements.txt
   ```

2. **Run the application:**
   ```sh
   uvicorn app.main:app --reload
   ```

3. **Test the API:**
   Use a tool like Postman or `curl` to test the `/chat` endpoint:
   ```sh
   curl -X POST "http://127.0.0.1:8000/chat" -H "Content-Type: application/json" -d '{"query": "your question here"}'
   ```
# test-repo
# cicd-test
# test-minikube-deployment
