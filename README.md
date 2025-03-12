# A-Secure-Searchable-Encryption-Framework-using-critical-cloud-storage-devices


This project is a Java-based web application that implements a secure searchable encryption framework for privacy-critical cloud storage services. It allows users to store encrypted data on the cloud while enabling efficient keyword-based search without compromising security.

This project was successfully completed as part of an academic requirement and certified by Manac Software Private Limited.

**📂 Project Structure**

    Secure-Searchable-Encryption/
    │—— src/
    │   ├—— main/
    │   │   ├—— java/com/
    │   │   │   ├—— encryption/       # Encryption & decryption logic
    │   │   │   ├—— database/         # Database connection handling
    │   │   │   ├—— servlets/         # Servlet controllers
    │   │   ├—— resources/
    │   │   │   ├—— config.properties # Configuration settings
    │   │   ├—— webapp/
    │   │   │   ├—— Cloud.jsp         # Cloud storage interface
    │   │   │   ├—— DataOwner.jsp     # Data owner dashboard
    │   │   │   ├—— DataUser.jsp      # Data user search panel
    │—— build.xml                     # Apache Ant build script
    │—— README.md                      # Project documentation

**🚀 Features**

    🔒 Secure Data Storage using Searchable Encryption

    🔍 Keyword-Based Search on encrypted data

    🛠️ Multi-User Access Control for Data Owners and Data Users

    💾 MySQL Database Integration

    🌐 JSP & Servlets-Based Web Interface

    ☁️ Cloud Storage Simulation

**⚙️ Technologies Used**

    Java (JDK 8+)

    JSP & Servlets

    Apache Tomcat (Server)

    MySQL (Database)

    Cryptography Algorithms for Secure Encryption

    Apache Ant (Build & Deployment)

**🛠️ Setup Instructions**

  Clone the Repository

    git clone https://github.com/MohamadMastanKhan/Secure-Searchable-Encryption.git
    cd Secure-Searchable-Encryption

**Configure Database**

    Create a MySQL database named secure_storage

    Update config.properties with MySQL credentials

**Build & Deploy**

    ant compile
    ant deploy

**Run the Application**

    Deploy the WAR file to Tomcat’s webapps directory

    Start Tomcat and access the app at:

    http://localhost:8080/SecureStorage/

**🐟 API Endpoints (Servlets)**

      UploadServlet (/upload) - Encrypts and uploads files to cloud storage.

      SearchServlet (/search) - Performs keyword-based search on encrypted data.

      DownloadServlet (/download) - Retrieves and decrypts stored files.

**🤝 Contributing**

    Feel free to raise issues and contribute to this project.

**🐝 License**

    MIT License © 2025 Mohamad Mastankhan


