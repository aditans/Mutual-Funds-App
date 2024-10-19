# W# (WinHash) Manipal Hackathon 2024 
**Team Name:** W# (WinHash)

**Problem Statement:** Problem ID: G1 | Mutual Funds Financial Literacy Application
## 📜 Introduction
Investing in mutual funds can be a great way for young adults to start their investment journey, but understanding how to choose the right fund can be challenging. Create a mobile app that simplifies the process of selecting and investing in mutual funds by making it engaging and educational. The app should feature game mechanics that allow users to simulate investing in various mutual funds, manage a virtual portfolio, and participate in investment challenges. Integrate educational content such as tutorials, quizzes, and real-world scenarios to teach key investment concepts. Include features like leaderboards, achievements, and rewards to enhance engagement.


## ✨ Features

App:

-  Fund selection and simulated investment
-   Educational content with quizzes
-   Real-time market data
-   Dynamic difficulty adjustment for learning modules
-   Customized fund recommendations
-   Personalized learning paths
-   Community forum
-   Progress tracking

## 🔴 Important Note
📱 App won't work under public WiFi networks(eg. iBus@MIT), because the API we have integrated is a free, open source API and the https fetch request will go on forever and the loading screen will be shown indefinitely.

1. If you are downloading the apk on your VD or your Handset device , you won't face any issues connecting to any network.
2. Use a personal hotspot if you're running it through android studio.

## 🟢 Access


📱 drive link for apk: [`https://drive.google.com/drive/folders/1gXuAahfZ89hlQ8DIB0GRgLo_0QsmJgBC?usp=sharing`](https://drive.google.com/drive/folders/1gXuAahfZ89hlQ8DIB0GRgLo_0QsmJgBC?usp=sharing)
## 💻 Instructions For Running App Using Android Studio 
(Ignore if you already have jdk-20.x.x )
1. download jdk-20 from : https://www.oracle.com/java/technologies/javase/jdk20-archive-downloads.html
2. set the path of the jdk-20.x.x  as JAVA_HOME in environment variables
3. (this is for the gradle compatibility matrix as mentioned here : https://docs.gradle.org/current/userguide/compatibility.html)


## 📦 Instructions For Local Deployment With Docker (Optional)

To deploy the application locally using docker, follow these steps:

1. Clone the repository:

    ```bash
    git clone https://github.com/your-team-repo/manipal-hackathon-2024.git
    cd manipal-hackathon-2024
    ```

1. Build the docker image

    ```bash
    sudo docker build -t hackathon .
    ```

1. Start a container using the built image and expose necessary ports

    ```bash
    sudo docker run -it --rm -p 3000:3000 hackathon
    ```

1. Access the application at http://localhost:3000

## ⚙️ Instructions For Local Deployment Without Docker

```
Python version: 3.10

Operating system: Ubuntu 22
```

Follow these steps to run the project locally:

1. Clone the repository:

    ```bash
    git clone https://github.com/your-team-repo/manipal-hackathon-2024.git
    cd manipal-hackathon-2024
    ```

1. Install dependencie

    ```bash
    npm install
    ```

1. Start server

    ```bash
    npm run start
    ```

1. Access the application at http://localhost:3000
