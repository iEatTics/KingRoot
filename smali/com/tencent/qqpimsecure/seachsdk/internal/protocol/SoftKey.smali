.class public final Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/qq/taf/jce/JceStruct;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;",
        ">;"
    }
.end annotation


# instance fields
.field public apkFileMd5:Ljava/lang/String;

.field public appid:I

.field public break_flag:I

.field public category:I

.field public categorytype:I

.field public cert:Ljava/lang/String;

.field public channelId:Ljava/lang/String;

.field public filesize:I

.field public isbuildin:I

.field public name:Ljava/lang/String;

.field public newest_version:Ljava/lang/String;

.field public old_versioncode:I

.field public partnerId:I

.field public producttime:Ljava/lang/String;

.field public sdk_version:I

.field public softname:Ljava/lang/String;

.field public source:I

.field public uid:Ljava/lang/String;

.field public version:Ljava/lang/String;

.field public versioncode:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->uid:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->softname:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->version:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->producttime:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->cert:Ljava/lang/String;

    .line 15
    iput v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->versioncode:I

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->name:Ljava/lang/String;

    .line 17
    iput v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->isbuildin:I

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->newest_version:Ljava/lang/String;

    .line 19
    iput v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->old_versioncode:I

    .line 20
    iput v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->categorytype:I

    .line 21
    iput v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->category:I

    .line 22
    iput v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->break_flag:I

    .line 23
    iput v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->source:I

    .line 24
    iput v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->sdk_version:I

    .line 25
    iput v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->appid:I

    .line 26
    iput v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->filesize:I

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->apkFileMd5:Ljava/lang/String;

    .line 28
    iput v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->partnerId:I

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->channelId:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;)I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 36
    const/4 v0, 0x4

    new-array v2, v0, [I

    .line 37
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->uid:Ljava/lang/String;

    iget-object v3, p1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->uid:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/qq/taf/jce/JceUtil;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    aput v0, v2, v1

    const/4 v0, 0x1

    .line 38
    iget-object v3, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->softname:Ljava/lang/String;

    iget-object v4, p1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->softname:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/qq/taf/jce/JceUtil;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v3

    aput v3, v2, v0

    const/4 v0, 0x2

    .line 39
    iget-object v3, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->version:Ljava/lang/String;

    iget-object v4, p1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->version:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/qq/taf/jce/JceUtil;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v3

    aput v3, v2, v0

    const/4 v0, 0x3

    .line 40
    iget-object v3, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->producttime:Ljava/lang/String;

    iget-object v4, p1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->producttime:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/qq/taf/jce/JceUtil;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v3

    aput v3, v2, v0

    move v0, v1

    .line 42
    :goto_0
    array-length v3, v2

    if-lt v0, v3, :cond_0

    .line 45
    :goto_1
    return v1

    .line 43
    :cond_0
    aget v3, v2, v0

    if-eqz v3, :cond_1

    aget v1, v2, v0

    goto :goto_1

    .line 42
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;

    invoke-virtual {p0, p1}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->a(Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;)I

    move-result v0

    return v0
.end method

.method public newInit()Lcom/qq/taf/jce/JceStruct;
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;-><init>()V

    return-object v0
.end method

.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 111
    invoke-virtual {p1, v2, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->uid:Ljava/lang/String;

    .line 112
    invoke-virtual {p1, v1, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->softname:Ljava/lang/String;

    .line 113
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->version:Ljava/lang/String;

    .line 114
    const/4 v0, 0x3

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->producttime:Ljava/lang/String;

    .line 115
    const/4 v0, 0x4

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->cert:Ljava/lang/String;

    .line 116
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->versioncode:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->versioncode:I

    .line 117
    const/4 v0, 0x6

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->name:Ljava/lang/String;

    .line 118
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->isbuildin:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->isbuildin:I

    .line 119
    const/16 v0, 0x8

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->newest_version:Ljava/lang/String;

    .line 120
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->old_versioncode:I

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->old_versioncode:I

    .line 121
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->categorytype:I

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->categorytype:I

    .line 122
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->category:I

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->category:I

    .line 123
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->break_flag:I

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->break_flag:I

    .line 124
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->source:I

    const/16 v1, 0xd

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->source:I

    .line 125
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->sdk_version:I

    const/16 v1, 0xe

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->sdk_version:I

    .line 126
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->appid:I

    const/16 v1, 0xf

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->appid:I

    .line 127
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->filesize:I

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->filesize:I

    .line 128
    const/16 v0, 0x11

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->apkFileMd5:Ljava/lang/String;

    .line 129
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->partnerId:I

    const/16 v1, 0x12

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->partnerId:I

    .line 130
    const/16 v0, 0x13

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->channelId:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->uid:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 54
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->softname:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 55
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->version:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 56
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->producttime:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->producttime:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->cert:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->cert:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 62
    :cond_1
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->versioncode:I

    if-eqz v0, :cond_2

    .line 63
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->versioncode:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 65
    :cond_2
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->name:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 66
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->name:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 68
    :cond_3
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->isbuildin:I

    if-eqz v0, :cond_4

    .line 69
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->isbuildin:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 71
    :cond_4
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->newest_version:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 72
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->newest_version:Ljava/lang/String;

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 74
    :cond_5
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->old_versioncode:I

    if-eqz v0, :cond_6

    .line 75
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->old_versioncode:I

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 77
    :cond_6
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->categorytype:I

    if-eqz v0, :cond_7

    .line 78
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->categorytype:I

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 80
    :cond_7
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->category:I

    if-eqz v0, :cond_8

    .line 81
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->category:I

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 83
    :cond_8
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->break_flag:I

    if-eqz v0, :cond_9

    .line 84
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->break_flag:I

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 86
    :cond_9
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->source:I

    if-eqz v0, :cond_a

    .line 87
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->source:I

    const/16 v1, 0xd

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 89
    :cond_a
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->sdk_version:I

    if-eqz v0, :cond_b

    .line 90
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->sdk_version:I

    const/16 v1, 0xe

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 92
    :cond_b
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->appid:I

    if-eqz v0, :cond_c

    .line 93
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->appid:I

    const/16 v1, 0xf

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 95
    :cond_c
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->filesize:I

    if-eqz v0, :cond_d

    .line 96
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->filesize:I

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 98
    :cond_d
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->apkFileMd5:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 99
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->apkFileMd5:Ljava/lang/String;

    const/16 v1, 0x11

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 101
    :cond_e
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->partnerId:I

    if-eqz v0, :cond_f

    .line 102
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->partnerId:I

    const/16 v1, 0x12

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 104
    :cond_f
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->channelId:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 105
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->channelId:Ljava/lang/String;

    const/16 v1, 0x13

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 107
    :cond_10
    return-void
.end method
