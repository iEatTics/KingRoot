.class final Lcom/kingroot/common/network/download/NetworkLoadTaskInfo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;
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
        "Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bg(I)[Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;
    .locals 1

    .prologue
    .line 162
    new-array v0, p1, [Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Lcom/kingroot/common/network/download/NetworkLoadTaskInfo$1;->o(Landroid/os/Parcel;)Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Lcom/kingroot/common/network/download/NetworkLoadTaskInfo$1;->bg(I)[Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;

    move-result-object v0

    return-object v0
.end method

.method public o(Landroid/os/Parcel;)Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;
    .locals 2

    .prologue
    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 146
    packed-switch v1, :pswitch_data_0

    .line 154
    new-instance v0, Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;

    invoke-direct {v0, p1}, Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;-><init>(Landroid/os/Parcel;)V

    .line 157
    :goto_0
    iput v1, v0, Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;->mType:I

    .line 158
    return-object v0

    .line 148
    :pswitch_0
    new-instance v0, Lcom/kingroot/common/network/download/AppDownloadTaskInfo;

    invoke-direct {v0, p1}, Lcom/kingroot/common/network/download/AppDownloadTaskInfo;-><init>(Landroid/os/Parcel;)V

    goto :goto_0

    .line 151
    :pswitch_1
    new-instance v0, Lcom/kingroot/common/network/download/CommonFileDownloadTaskInfo;

    invoke-direct {v0, p1}, Lcom/kingroot/common/network/download/CommonFileDownloadTaskInfo;-><init>(Landroid/os/Parcel;)V

    goto :goto_0

    .line 146
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
