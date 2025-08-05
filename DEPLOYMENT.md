# Deploying SamridhhiGenAI Website on Render

This guide will help you deploy the SamridhhiGenAI website on Render.com.

## Prerequisites

- GitHub repository: https://github.com/abneesh/samridhhi_web.git
- Render account (free tier available)

## Deployment Steps

### Method 1: Automatic Deployment (Recommended)

1. **Go to Render Dashboard**
   - Visit: https://render.com
   - Sign up or log in to your account

2. **Create New Static Site**
   - Click "New +" button
   - Select "Static Site"

3. **Connect GitHub Repository**
   - Choose "Connect a repository"
   - Select: `abneesh/samridhhi_web`
   - Click "Connect"

4. **Configure Deployment Settings**
   ```
   Name: samridhhigenai-website
   Branch: main
   Build Command: ./build.sh
   Publish Directory: .
   ```

5. **Advanced Settings (Optional)**
   - Add custom domain if needed
   - Configure environment variables if required

6. **Deploy**
   - Click "Create Static Site"
   - Render will automatically build and deploy

### Method 2: Manual Blueprint Deployment

1. **Use render.yaml Configuration**
   - The repository includes a `render.yaml` file
   - Render will automatically detect and use this configuration

2. **Blueprint Deployment**
   - Go to Render Dashboard
   - Click "New +" → "Blueprint"
   - Connect the GitHub repository
   - Render will use the `render.yaml` configuration

## Configuration Files

### render.yaml
- Defines the service configuration
- Sets up static site hosting
- Configures security headers
- Handles routing for SPA behavior

### build.sh
- Simple build script for verification
- Checks that all required files exist
- No actual build process needed for static HTML

### package.json
- Updated with Render-specific scripts
- Includes repository and homepage URLs
- Defines Node.js engine requirements

## Expected Deployment URL

Your website will be available at:
```
https://samridhhigenai-website.onrender.com
```

Or with a custom name:
```
https://[your-chosen-name].onrender.com
```

## Post-Deployment

1. **Verify Deployment**
   - Check that all pages load correctly
   - Test responsive design on different devices
   - Verify contact form functionality
   - Test navigation and animations

2. **Custom Domain (Optional)**
   - Add your custom domain in Render settings
   - Update DNS records as instructed
   - Enable SSL (automatic with Render)

3. **Performance Optimization**
   - Render automatically provides:
     - Global CDN
     - Automatic SSL
     - Gzip compression
     - HTTP/2 support

## Troubleshooting

### Common Issues

1. **Build Fails**
   - Check that `build.sh` is executable
   - Verify all files are committed to GitHub
   - Check Render build logs

2. **Site Not Loading**
   - Verify `index.html` exists in root directory
   - Check that all CSS/JS files are properly linked
   - Review Render deployment logs

3. **Assets Not Loading**
   - Ensure relative paths are used for CSS/JS
   - Check that `styles/` and `scripts/` directories exist
   - Verify file names match exactly (case-sensitive)

### Support

- Render Documentation: https://render.com/docs
- GitHub Repository: https://github.com/abneesh/samridhhi_web
- Contact: Check README.md for contact information

## Automatic Deployments

Once connected, Render will automatically:
- Deploy on every push to the main branch
- Provide deployment notifications
- Maintain deployment history
- Offer rollback capabilities

## Security Features

The deployment includes:
- HTTPS by default
- Security headers (X-Frame-Options, X-Content-Type-Options, etc.)
- DDoS protection
- Automatic SSL certificate management

Your SamridhhiGenAI website will be live and professional on Render! 🚀
