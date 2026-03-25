# Swift-ConcurrencyAndSafety
This is a repo designed to explore Swift's various designs for Concurrency, and different Process/Thread safety mechanisms

## Setup
This project is designed to work on both macOS and Linux. Most of the development work took place on MacOS, but the testing occurs through a GitHub Actions workflow for both Linux an MacOS (Linux for PRs, MacOS after merging to main to reduce costs).

## Explanations
### DispatchSemaphore
The general system is based on the Semaphore (integer accessor lock) 
