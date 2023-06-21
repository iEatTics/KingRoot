.class public final Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/MySoftSimpleInfo;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static bQf:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;

.field static final synthetic lo:Z


# instance fields
.field public function:Ljava/lang/String;

.field public official:I

.field public reportFeature:I

.field public softSimpleInfo:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;

.field public update:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/MySoftSimpleInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/MySoftSimpleInfo;->lo:Z

    .line 153
    return-void

    .line 9
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/MySoftSimpleInfo;->softSimpleInfo:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;

    .line 23
    iput v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/MySoftSimpleInfo;->reportFeature:I

    .line 25
    iput v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/MySoftSimpleInfo;->official:I

    .line 27
    iput v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/MySoftSimpleInfo;->update:I

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/MySoftSimpleInfo;->function:Ljava/lang/String;

    .line 83
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/MySoftSimpleInfo;->softSimpleInfo:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/MySoftSimpleInfo;->a(Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;)V

    .line 84
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/MySoftSimpleInfo;->reportFeature:I

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/MySoftSimpleInfo;->kD(I)V

    .line 85
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/MySoftSimpleInfo;->official:I

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/MySoftSimpleInfo;->kE(I)V

    .line 86
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/MySoftSimpleInfo;->update:I

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/MySoftSimpleInfo;->kF(I)V

    .line 87
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/MySoftSimpleInfo;->function:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/MySoftSimpleInfo;->ns(Ljava/lang/String;)V

    .line 88
    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/MySoftSimpleInfo;->softSimpleInfo:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;

    .line 39
    return-void
.end method

.method public aiA()Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/MySoftSimpleInfo;->softSimpleInfo:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;

    return-object v0
.end method

.method public aiB()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/MySoftSimpleInfo;->update:I

    return v0
.end method

.method public aiC()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/MySoftSimpleInfo;->function:Ljava/lang/String;

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 129
    const/4 v0, 0x0

    .line 132
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 138
    :cond_0
    return-object v0

    .line 134
    :catch_0
    move-exception v1

    .line 136
    sget-boolean v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/MySoftSimpleInfo;->lo:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 101
    if-nez p1, :cond_1

    .line 107
    :cond_0
    :goto_0
    return v0

    .line 106
    :cond_1
    check-cast p1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/MySoftSimpleInfo;

    .line 108
    iget-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/MySoftSimpleInfo;->softSimpleInfo:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;

    iget-object v2, p1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/MySoftSimpleInfo;->softSimpleInfo:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    iget v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/MySoftSimpleInfo;->reportFeature:I

    iget v2, p1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/MySoftSimpleInfo;->reportFeature:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    iget v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/MySoftSimpleInfo;->official:I

    iget v2, p1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/MySoftSimpleInfo;->official:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    iget v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/MySoftSimpleInfo;->update:I

    iget v2, p1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/MySoftSimpleInfo;->update:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/MySoftSimpleInfo;->function:Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/MySoftSimpleInfo;->function:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 119
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Need define key first!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :catch_0
    move-exception v0

    .line 123
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method public kD(I)V
    .locals 0

    .prologue
    .line 48
    iput p1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/MySoftSimpleInfo;->reportFeature:I

    .line 49
    return-void
.end method

.method public kE(I)V
    .locals 0

    .prologue
    .line 58
    iput p1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/MySoftSimpleInfo;->official:I

    .line 59
    return-void
.end method

.method public kF(I)V
    .locals 0

    .prologue
    .line 68
    iput p1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/MySoftSimpleInfo;->update:I

    .line 69
    return-void
.end method

.method public ns(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/MySoftSimpleInfo;->function:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 157
    sget-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/MySoftSimpleInfo;->bQf:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;

    if-nez v0, :cond_0

    .line 159
    new-instance v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;-><init>()V

    sput-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/MySoftSimpleInfo;->bQf:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;

    .line 161
    :cond_0
    sget-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/MySoftSimpleInfo;->bQf:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;

    invoke-virtual {p1, v0, v2, v1}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/MySoftSimpleInfo;->a(Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;)V

    .line 163
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/MySoftSimpleInfo;->reportFeature:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/MySoftSimpleInfo;->kD(I)V

    .line 165
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/MySoftSimpleInfo;->official:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/MySoftSimpleInfo;->kE(I)V

    .line 167
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/MySoftSimpleInfo;->update:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/MySoftSimpleInfo;->kF(I)V

    .line 169
    const/4 v0, 0x4

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/MySoftSimpleInfo;->ns(Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/MySoftSimpleInfo;->softSimpleInfo:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 144
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/MySoftSimpleInfo;->reportFeature:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 145
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/MySoftSimpleInfo;->official:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 146
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/MySoftSimpleInfo;->update:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 147
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/MySoftSimpleInfo;->function:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/MySoftSimpleInfo;->function:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 151
    :cond_0
    return-void
.end method
