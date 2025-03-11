FROM cgr.dev/chainguard/wolfi-base

# Install Wolfi's hardened Node.js
RUN apk add --no-cache nodejs-21 npm

# Set work directory
WORKDIR /app

# Use a non-root user for security
USER nonroot

CMD ["node", "--version"]
