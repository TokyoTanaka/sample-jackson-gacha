FROM --platform=linux/amd64 mysql:5.7-debian
LABEL maintainer="Mahmoud Zalt <mahmoud@zalt.me>"

#####################################
# Set Timezone
#####################################

ARG TZ=JST
ENV TZ ${TZ}
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone && chown -R mysql:root /var/lib/mysql/

# MySQL日本語対応
RUN apt-get update && apt-get -y install locales-all

RUN touch /var/log/mysql/mysql.log

CMD ["mysqld"]

EXPOSE 3306
