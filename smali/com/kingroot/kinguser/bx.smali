.class public final Lcom/kingroot/kinguser/bx;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic lo:Z


# instance fields
.field public checksum:Ljava/lang/String;

.field public timestamp:I

.field public versioncode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/kingroot/kinguser/bx;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/kingroot/kinguser/bx;->lo:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/bx;->checksum:Ljava/lang/String;

    .line 23
    iput v1, p0, Lcom/kingroot/kinguser/bx;->timestamp:I

    .line 25
    iput v1, p0, Lcom/kingroot/kinguser/bx;->versioncode:I

    .line 59
    iget-object v0, p0, Lcom/kingroot/kinguser/bx;->checksum:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bx;->u(Ljava/lang/String;)V

    .line 60
    iget v0, p0, Lcom/kingroot/kinguser/bx;->timestamp:I

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bx;->e(I)V

    .line 61
    iget v0, p0, Lcom/kingroot/kinguser/bx;->versioncode:I

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bx;->f(I)V

    .line 62
    return-void
.end method


# virtual methods
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
    sget-boolean v1, Lcom/kingroot/kinguser/bx;->lo:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public display(Ljava/lang/StringBuilder;I)V
    .locals 3

    .prologue
    .line 131
    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 132
    iget-object v1, p0, Lcom/kingroot/kinguser/bx;->checksum:Ljava/lang/String;

    const-string v2, "checksum"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 133
    iget v1, p0, Lcom/kingroot/kinguser/bx;->timestamp:I

    const-string v2, "timestamp"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 134
    iget v1, p0, Lcom/kingroot/kinguser/bx;->versioncode:I

    const-string v2, "versioncode"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 135
    return-void
.end method

.method public e(I)V
    .locals 0

    .prologue
    .line 44
    iput p1, p0, Lcom/kingroot/kinguser/bx;->timestamp:I

    .line 45
    return-void
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
    check-cast p1, Lcom/kingroot/kinguser/bx;

    .line 79
    iget-object v1, p0, Lcom/kingroot/kinguser/bx;->checksum:Ljava/lang/String;

    iget-object v2, p1, Lcom/kingroot/kinguser/bx;->checksum:Ljava/lang/String;

    .line 80
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/kingroot/kinguser/bx;->timestamp:I

    iget v2, p1, Lcom/kingroot/kinguser/bx;->timestamp:I

    .line 81
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/kingroot/kinguser/bx;->versioncode:I

    iget v2, p1, Lcom/kingroot/kinguser/bx;->versioncode:I

    .line 82
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public f(I)V
    .locals 0

    .prologue
    .line 54
    iput p1, p0, Lcom/kingroot/kinguser/bx;->versioncode:I

    .line 55
    return-void
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

.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 121
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bx;->u(Ljava/lang/String;)V

    .line 123
    iget v0, p0, Lcom/kingroot/kinguser/bx;->timestamp:I

    invoke-virtual {p1, v0, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bx;->e(I)V

    .line 125
    iget v0, p0, Lcom/kingroot/kinguser/bx;->versioncode:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bx;->f(I)V

    .line 127
    return-void
.end method

.method public u(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/kingroot/kinguser/bx;->checksum:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/kingroot/kinguser/bx;->checksum:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 114
    iget v0, p0, Lcom/kingroot/kinguser/bx;->timestamp:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 115
    iget v0, p0, Lcom/kingroot/kinguser/bx;->versioncode:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 116
    return-void
.end method
