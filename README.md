# Martin Shkreli's livestream in a RAG
Uses simonw's LLM tool in order to create a vectorized database of everything that Martin Shkreli says.

## TODO Enable
  --condition_on_previous_text CONDITION_ON_PREVIOUS_TEXT
                        if True, provide the previous output of the model as a prompt for the next window; disabling may make the
                        text inconsistent across windows, but the model becomes less prone to getting stuck in a failure loop
                        (default: True)
Investigate how this changes the quality of the embeddings
