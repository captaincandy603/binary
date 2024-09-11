FROM gcr.io/google-appengine/debian11:latest
COPY kritis/out/signer /kritis/signer
ENV HOME /root
ENV USER /root
ENV PATH /usr/local/bin:/kritis
ENTRYPOINT ["/kritis/signer"]
