.class public final Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Comment;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic lo:Z


# instance fields
.field public comment:Ljava/lang/String;

.field public score:I

.field public title:Ljava/lang/String;

.field public user:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Comment;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Comment;->lo:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Comment;->title:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Comment;->comment:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Comment;->user:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Comment;->score:I

    .line 71
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Comment;->title:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Comment;->setTitle(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Comment;->comment:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Comment;->setComment(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Comment;->user:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Comment;->np(Ljava/lang/String;)V

    .line 74
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Comment;->score:I

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Comment;->gl(I)V

    .line 75
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 114
    const/4 v0, 0x0

    .line 117
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 123
    :cond_0
    return-object v0

    .line 119
    :catch_0
    move-exception v1

    .line 121
    sget-boolean v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Comment;->lo:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 87
    if-nez p1, :cond_1

    .line 93
    :cond_0
    :goto_0
    return v0

    .line 92
    :cond_1
    check-cast p1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Comment;

    .line 94
    iget-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Comment;->title:Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Comment;->title:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Comment;->comment:Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Comment;->comment:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Comment;->user:Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Comment;->user:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    iget v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Comment;->score:I

    iget v2, p1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Comment;->score:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public gl(I)V
    .locals 0

    .prologue
    .line 66
    iput p1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Comment;->score:I

    .line 67
    return-void
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 104
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Need define key first!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :catch_0
    move-exception v0

    .line 108
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public np(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Comment;->user:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 137
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Comment;->setTitle(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p1, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Comment;->setComment(Ljava/lang/String;)V

    .line 141
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Comment;->np(Ljava/lang/String;)V

    .line 143
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Comment;->score:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Comment;->gl(I)V

    .line 145
    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Comment;->comment:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Comment;->title:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Comment;->title:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 129
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Comment;->comment:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 130
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Comment;->user:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 131
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Comment;->score:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 132
    return-void
.end method
