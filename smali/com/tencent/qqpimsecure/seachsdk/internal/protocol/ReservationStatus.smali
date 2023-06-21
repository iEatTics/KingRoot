.class public final Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReservationStatus;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# instance fields
.field public qq:Ljava/lang/String;

.field public reservationType:I

.field public wx:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReservationStatus;->reservationType:I

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReservationStatus;->qq:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReservationStatus;->wx:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public newInit()Lcom/qq/taf/jce/JceStruct;
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReservationStatus;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReservationStatus;-><init>()V

    return-object v0
.end method

.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReservationStatus;->reservationType:I

    invoke-virtual {p1, v0, v1, v1}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReservationStatus;->reservationType:I

    .line 36
    const/4 v0, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReservationStatus;->qq:Ljava/lang/String;

    .line 37
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReservationStatus;->wx:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    .prologue
    .line 22
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReservationStatus;->reservationType:I

    if-eqz v0, :cond_0

    .line 23
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReservationStatus;->reservationType:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReservationStatus;->qq:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 26
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReservationStatus;->qq:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 28
    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReservationStatus;->wx:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 29
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReservationStatus;->wx:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 31
    :cond_2
    return-void
.end method
