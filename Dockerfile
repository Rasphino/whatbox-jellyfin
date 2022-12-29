FROM jellyfin/jellyfin:10.8.8
#ARG DEBIAN_FRONTEND="noninteractive"
#RUN apt-get update \
# && apt-get install --no-install-recommends --no-install-suggests -y \
#      fonts-noto-cjk \
#      fonts-noto-cjk-extra \
#      fontconfig
#COPY fonts/* /usr/share/fonts
#RUN fc-cache -fv

VOLUME /data /cache /config /log
ENTRYPOINT ["./jellyfin/jellyfin", \
    "--datadir", "/data", \
    "--configdir", "/config", \
    "--cachedir", "/cache", \
    "--ffmpeg", "/usr/lib/jellyfin-ffmpeg/ffmpeg"]

