.class public final Lcom/kingroot/kinguser/dj;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic lo:Z


# instance fields
.field public nk:Ljava/lang/String;

.field public nl:J

.field public nm:J

.field public nn:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/kingroot/kinguser/dj;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/kingroot/kinguser/dj;->lo:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 70
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/dj;->nk:Ljava/lang/String;

    .line 23
    iput-wide v2, p0, Lcom/kingroot/kinguser/dj;->nl:J

    .line 25
    iput-wide v2, p0, Lcom/kingroot/kinguser/dj;->nm:J

    .line 27
    iput-wide v2, p0, Lcom/kingroot/kinguser/dj;->nn:J

    .line 71
    iget-object v0, p0, Lcom/kingroot/kinguser/dj;->nk:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/dj;->O(Ljava/lang/String;)V

    .line 72
    iget-wide v0, p0, Lcom/kingroot/kinguser/dj;->nl:J

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/dj;->m(J)V

    .line 73
    iget-wide v0, p0, Lcom/kingroot/kinguser/dj;->nm:J

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/dj;->n(J)V

    .line 74
    iget-wide v0, p0, Lcom/kingroot/kinguser/dj;->nn:J

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/dj;->o(J)V

    .line 75
    return-void
.end method


# virtual methods
.method public O(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/kingroot/kinguser/dj;->nk:Ljava/lang/String;

    .line 37
    return-void
.end method

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
    sget-boolean v1, Lcom/kingroot/kinguser/dj;->lo:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public display(Ljava/lang/StringBuilder;I)V
    .locals 4

    .prologue
    .line 149
    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 150
    iget-object v1, p0, Lcom/kingroot/kinguser/dj;->nk:Ljava/lang/String;

    const-string v2, "strSoftName"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 151
    iget-wide v2, p0, Lcom/kingroot/kinguser/dj;->nl:J

    const-string v1, "nAllow"

    invoke-virtual {v0, v2, v3, v1}, Lcom/qq/taf/jce/JceDisplayer;->display(JLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 152
    iget-wide v2, p0, Lcom/kingroot/kinguser/dj;->nm:J

    const-string v1, "nRefuse"

    invoke-virtual {v0, v2, v3, v1}, Lcom/qq/taf/jce/JceDisplayer;->display(JLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 153
    iget-wide v2, p0, Lcom/kingroot/kinguser/dj;->nn:J

    const-string v1, "nDefault"

    invoke-virtual {v0, v2, v3, v1}, Lcom/qq/taf/jce/JceDisplayer;->display(JLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 154
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

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
    check-cast p1, Lcom/kingroot/kinguser/dj;

    .line 93
    iget-object v1, p0, Lcom/kingroot/kinguser/dj;->nk:Ljava/lang/String;

    iget-object v2, p1, Lcom/kingroot/kinguser/dj;->nk:Ljava/lang/String;

    .line 94
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/kingroot/kinguser/dj;->nl:J

    iget-wide v4, p1, Lcom/kingroot/kinguser/dj;->nl:J

    .line 95
    invoke-static {v2, v3, v4, v5}, Lcom/qq/taf/jce/JceUtil;->equals(JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/kingroot/kinguser/dj;->nm:J

    iget-wide v4, p1, Lcom/kingroot/kinguser/dj;->nm:J

    .line 96
    invoke-static {v2, v3, v4, v5}, Lcom/qq/taf/jce/JceUtil;->equals(JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/kingroot/kinguser/dj;->nn:J

    iget-wide v4, p1, Lcom/kingroot/kinguser/dj;->nn:J

    .line 97
    invoke-static {v2, v3, v4, v5}, Lcom/qq/taf/jce/JceUtil;->equals(JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
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

.method public m(J)V
    .locals 1

    .prologue
    .line 46
    iput-wide p1, p0, Lcom/kingroot/kinguser/dj;->nl:J

    .line 47
    return-void
.end method

.method public n(J)V
    .locals 1

    .prologue
    .line 56
    iput-wide p1, p0, Lcom/kingroot/kinguser/dj;->nm:J

    .line 57
    return-void
.end method

.method public o(J)V
    .locals 1

    .prologue
    .line 66
    iput-wide p1, p0, Lcom/kingroot/kinguser/dj;->nn:J

    .line 67
    return-void
.end method

.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 137
    invoke-virtual {p1, v3, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/dj;->O(Ljava/lang/String;)V

    .line 139
    iget-wide v0, p0, Lcom/kingroot/kinguser/dj;->nl:J

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/dj;->m(J)V

    .line 141
    iget-wide v0, p0, Lcom/kingroot/kinguser/dj;->nm:J

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/dj;->n(J)V

    .line 143
    iget-wide v0, p0, Lcom/kingroot/kinguser/dj;->nn:J

    const/4 v2, 0x3

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/dj;->o(J)V

    .line 145
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 3

    .prologue
    .line 128
    iget-object v0, p0, Lcom/kingroot/kinguser/dj;->nk:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 129
    iget-wide v0, p0, Lcom/kingroot/kinguser/dj;->nl:J

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 130
    iget-wide v0, p0, Lcom/kingroot/kinguser/dj;->nm:J

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 131
    iget-wide v0, p0, Lcom/kingroot/kinguser/dj;->nn:J

    const/4 v2, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 132
    return-void
.end method
