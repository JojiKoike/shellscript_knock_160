# Debian 13 (trixie) のスリムイメージをベースに使用
FROM debian:trixie-20250908-slim
# タイムゾーンの設定（必要に応じて）
ENV TZ=Asia/Tokyo
ENV USERNAME=developer
ENV USER_UID=1000
ENV USER_GID=$USER_UID

# 必要なパッケージのインストール
RUN apt-get update && apt-get install -y --no-install-recommends \
	tzdata \
	curl \
	ca-certificates \
	build-essential \
	git \
	bash \
	zsh \
	fontconfig \
	libfreetype6 \
	sudo \
	openssh-client \
	gnupg2 \
	imagemagick \
	&& rm -rf /var/lib/apt/lists/*

# タイムゾーンの設定
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# developerユーザーとグループの作成
RUN groupadd --gid $USER_GID $USERNAME \
	&& useradd --uid $USER_UID --gid $USER_GID -m $USERNAME -s /usr/bin/zsh \
	&& echo "$USERNAME ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers.d/$USERNAME \
	&& chmod 0440 /etc/sudoers.d/$USERNAME

# ユーザーのホームディレクトリ
ENV HOME=/home/$USERNAME

# Starshipのインストール（developerユーザーで）
RUN curl -fsSL https://starship.rs/install.sh | sh -s -- --yes

# zshの設定ファイルでStarshipを初期化
RUN echo 'eval "$(starship init zsh)"' >> $HOME/.zshrc

# 必要に応じてStarshipの設定ファイルをコピー
COPY --chown=$USERNAME:$USERNAME .starship.toml $HOME/.config/starship.toml

# 作業ディレクトリの設定と所有権の変更
WORKDIR /workspace
RUN sudo chown -R $USERNAME:$USERNAME /workspace

# シェルの初期化
SHELL ["/usr/bin/zsh", "-l", "-c"]