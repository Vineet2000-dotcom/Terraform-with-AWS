name: First workflow

on: push

jobs:
  first_job:
    runs-on: ubuntu-latest
    steps:
      # Step 1: Checkout your repository code
      - name: Checkout code
        uses: actions/checkout@v4

      # Step 2: Print welcome message
      - name: Welcome msg
        run: echo "My first job"

      # Step 3: Run shell script
      - name: Running shell script
        run: |
          chmod +x app.sh
          ./app.sh

