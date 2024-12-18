# 🎵 Spotify Playlist Creator using Terraform

## 🚀 Project Overview

This project demonstrates how to automate the creation of Spotify playlists using **Terraform**. By leveraging the Spotify API and Terraform's infrastructure-as-code capabilities, you can create custom playlists programmatically.

---

## 🧰 Prerequisites

Before you begin, ensure you have the following installed:

- **Docker** 🐳 - For running the Spotify auth proxy.
- **Spotify Account** 🎶 - You need a free or premium account.
- **Spotify Developer Account** 👨‍💻 - To create a developer app and get API credentials.

---

## 🔑 Authentication Setup

1. **Run the Spotify Auth Proxy:**

   ```bash
   docker run --rm -it -p 27228:27228 --env-file .env ghcr.io/conradludgate/spotify-auth-proxy
   ```

   > This command must keep running in the background to handle Spotify authentication.

2. **Fetch the API Key:**

   - After running the above command, copy the fetched API key.
   - Paste it into your `terraform.tfvars` file like this:
     ```hcl
     api_key = "<Your_Fetched_API_Key>"
     ```

3. **Environment Variables (********`.env`********):**
   Make sure your `.env` file contains:

   ```env
   SPOTIFY_CLIENT_ID=<Your Spotify Client ID>
   SPOTIFY_CLIENT_SECRET=<Your Spotify Client Secret>
   ```

---

## 📦 Project Files

- **`provider.tf`** - Configures Terraform with the Spotify provider.
- **`variables.tf`** - Defines necessary input variables.
- **`playlists.tf`** - Contains the Terraform resources to create playlists.
- **`terraform.tfvars`** - Stores sensitive data like API keys securely.

---

## ⚙️ How to Run the Project

1. **Initialize Terraform:**

   ```bash
   terraform init
   ```

2. **Plan the Changes:**

   ```bash
   terraform plan
   ```

3. **Apply the Configuration:**

   ```bash
   terraform apply
   ```

4. **Verify:**
   Check your Spotify account for the newly created playlists!

---

## 🛠 Troubleshooting

- Ensure Docker is running.
- Verify the Spotify auth proxy is still active.
- Double-check API credentials in the `.env` file.

---

Happy Automating! 🎧

