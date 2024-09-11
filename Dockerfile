FROM gcr.io/google-appengine/debian11:latest

# Copy the signer binary
COPY kritis/out/signer /kritis/signer

# Set environment variables
ENV HOME /root
ENV USER /root
ENV PATH /usr/local/bin:/kritis:$PATH

# Set the entrypoint
ENTRYPOINT ["/kritis/signer"]
