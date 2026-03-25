# Swift-ConcurrencyAndSafety
This is a repo designed to explore Swift's various designs for Concurrency, and different Process/Thread safety mechanisms

## Setup
This project is designed to work on both macOS and Linux. Most of the development work took place on MacOS, but the testing occurs through a GitHub Actions workflow for both Linux an MacOS (Linux for PRs, MacOS after merging to main to reduce costs).

## Explanations
### AsyncAwaitTesting
In order to run code asynchronously, you need a DispatchSemaphore to wait for your Async Task to complete during runtime. While this could be an async Task against the main DispatchQueue, it's better to spin this off and configure a DispatchSemaphore for single-threaded Async tasks (more broadly - not specific to Swift)
