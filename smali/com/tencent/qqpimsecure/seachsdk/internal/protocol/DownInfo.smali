.class public final Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownInfo;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic lo:Z

.field static nK:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public listDownSoftItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;",
            ">;"
        }
    .end annotation
.end field

.field public nGUID:I

.field public sQUA:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownInfo;->lo:Z

    .line 118
    return-void

    .line 9
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

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownInfo;->sQUA:Ljava/lang/String;

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownInfo;->nGUID:I

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownInfo;->listDownSoftItems:Ljava/util/ArrayList;

    .line 59
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownInfo;->sQUA:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownInfo;->nq(Ljava/lang/String;)V

    .line 60
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownInfo;->nGUID:I

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownInfo;->kC(I)V

    .line 61
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownInfo;->listDownSoftItems:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownInfo;->F(Ljava/util/ArrayList;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownInfo;->sQUA:Ljava/lang/String;

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownInfo;->nGUID:I

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownInfo;->listDownSoftItems:Ljava/util/ArrayList;

    .line 66
    invoke-virtual {p0, p1}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownInfo;->nq(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0, p2}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownInfo;->kC(I)V

    .line 68
    invoke-virtual {p0, p3}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownInfo;->F(Ljava/util/ArrayList;)V

    .line 69
    return-void
.end method


# virtual methods
.method public F(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    iput-object p1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownInfo;->listDownSoftItems:Ljava/util/ArrayList;

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
    sget-boolean v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownInfo;->lo:Z

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
    check-cast p1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownInfo;

    .line 80
    iget-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownInfo;->sQUA:Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownInfo;->sQUA:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    iget v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownInfo;->nGUID:I

    iget v2, p1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownInfo;->nGUID:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownInfo;->listDownSoftItems:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownInfo;->listDownSoftItems:Ljava/util/ArrayList;

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

.method public kC(I)V
    .locals 0

    .prologue
    .line 44
    iput p1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownInfo;->nGUID:I

    .line 45
    return-void
.end method

.method public nq(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownInfo;->sQUA:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 122
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownInfo;->nq(Ljava/lang/String;)V

    .line 124
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownInfo;->nGUID:I

    invoke-virtual {p1, v0, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownInfo;->kC(I)V

    .line 126
    sget-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownInfo;->nK:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownInfo;->nK:Ljava/util/ArrayList;

    .line 129
    new-instance v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;-><init>()V

    .line 130
    sget-object v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownInfo;->nK:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    :cond_0
    sget-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownInfo;->nK:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownInfo;->F(Ljava/util/ArrayList;)V

    .line 134
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownInfo;->sQUA:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 114
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownInfo;->nGUID:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 115
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownInfo;->listDownSoftItems:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    .line 116
    return-void
.end method
