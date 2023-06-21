.class final Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ax(Landroid/os/Parcel;)Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 191
    new-instance v1, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;

    invoke-direct {v1}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;-><init>()V

    .line 192
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->a(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->b(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->c(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->d(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->e(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v1, v2}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->a(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;I)I

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->a(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;J)J

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->b(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;J)J

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-static {v1, v0}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->b(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;Z)Z

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/boq;

    invoke-static {v1, v0}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->a(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;Lcom/kingroot/kinguser/boq;)Lcom/kingroot/kinguser/boq;

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->f(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v1, v0}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->b(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;I)I

    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->c(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;J)J

    .line 205
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->g(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v1, v0}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->c(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;I)I

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->d(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;J)J

    .line 208
    return-object v1

    .line 200
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 187
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo$1;->ax(Landroid/os/Parcel;)Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;

    move-result-object v0

    return-object v0
.end method

.method public fT(I)[Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;
    .locals 1

    .prologue
    .line 213
    new-array v0, p1, [Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 187
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo$1;->fT(I)[Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;

    move-result-object v0

    return-object v0
.end method
