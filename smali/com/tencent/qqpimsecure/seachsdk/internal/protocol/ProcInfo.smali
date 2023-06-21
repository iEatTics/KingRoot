.class public final Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ProcInfo;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic lo:Z


# instance fields
.field public desc:Ljava/lang/String;

.field public file:Ljava/lang/String;

.field public uid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ProcInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ProcInfo;->lo:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ProcInfo;->file:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ProcInfo;->desc:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ProcInfo;->uid:Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ProcInfo;->file:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ProcInfo;->nt(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ProcInfo;->desc:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ProcInfo;->kK(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ProcInfo;->uid:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ProcInfo;->H(Ljava/lang/String;)V

    .line 62
    return-void
.end method


# virtual methods
.method public H(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ProcInfo;->uid:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 99
    const/4 v0, 0x0

    .line 102
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 108
    :cond_0
    return-object v0

    .line 104
    :catch_0
    move-exception v1

    .line 106
    sget-boolean v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ProcInfo;->lo:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 73
    if-nez p1, :cond_1

    .line 79
    :cond_0
    :goto_0
    return v0

    .line 78
    :cond_1
    check-cast p1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ProcInfo;

    .line 80
    iget-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ProcInfo;->file:Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ProcInfo;->file:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ProcInfo;->desc:Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ProcInfo;->desc:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ProcInfo;->uid:Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ProcInfo;->uid:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 89
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Need define key first!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :catch_0
    move-exception v0

    .line 93
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public kK(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ProcInfo;->desc:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public nt(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ProcInfo;->file:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 127
    invoke-virtual {p1, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ProcInfo;->nt(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p1, v2, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ProcInfo;->kK(Ljava/lang/String;)V

    .line 131
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ProcInfo;->H(Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ProcInfo;->file:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 114
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ProcInfo;->desc:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ProcInfo;->desc:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ProcInfo;->uid:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ProcInfo;->uid:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 122
    :cond_1
    return-void
.end method
