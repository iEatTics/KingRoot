.class public final Lsm/ab;
.super Lsm/ag;
.source "SourceFile"


# static fields
.field static k:[B

.field static l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final synthetic m:Z


# instance fields
.field public a:S

.field public b:B

.field public c:I

.field public d:I

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:[B

.field public h:I

.field public i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5
    const-class v0, Lsm/ab;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lsm/ab;->m:Z

    .line 90
    sput-object v1, Lsm/ab;->k:[B

    .line 91
    sput-object v1, Lsm/ab;->l:Ljava/util/Map;

    return-void

    .line 5
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Lsm/ag;-><init>()V

    .line 7
    iput-short v0, p0, Lsm/ab;->a:S

    .line 9
    iput-byte v0, p0, Lsm/ab;->b:B

    .line 11
    iput v0, p0, Lsm/ab;->c:I

    .line 13
    iput v0, p0, Lsm/ab;->d:I

    .line 15
    iput-object v1, p0, Lsm/ab;->e:Ljava/lang/String;

    .line 17
    iput-object v1, p0, Lsm/ab;->f:Ljava/lang/String;

    .line 21
    iput v0, p0, Lsm/ab;->h:I

    .line 29
    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/ccr;)V
    .locals 4

    .prologue
    .line 96
    :try_start_0
    iget-short v0, p0, Lsm/ab;->a:S

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/ccr;->a(SIZ)S

    move-result v0

    iput-short v0, p0, Lsm/ab;->a:S

    .line 97
    iget-byte v0, p0, Lsm/ab;->b:B

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/ccr;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lsm/ab;->b:B

    .line 98
    iget v0, p0, Lsm/ab;->c:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/ccr;->a(IIZ)I

    move-result v0

    iput v0, p0, Lsm/ab;->c:I

    .line 99
    iget v0, p0, Lsm/ab;->d:I

    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/ccr;->a(IIZ)I

    move-result v0

    iput v0, p0, Lsm/ab;->d:I

    .line 100
    const/4 v0, 0x5

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/ccr;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsm/ab;->e:Ljava/lang/String;

    .line 101
    const/4 v0, 0x6

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/ccr;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsm/ab;->f:Ljava/lang/String;

    .line 102
    sget-object v0, Lsm/ab;->k:[B

    if-nez v0, :cond_0

    .line 103
    const/4 v0, 0x1

    new-array v0, v0, [B

    sput-object v0, Lsm/ab;->k:[B

    .line 105
    :cond_0
    sget-object v0, Lsm/ab;->k:[B

    const/4 v1, 0x7

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/ccr;->a([BIZ)[B

    move-result-object v0

    iput-object v0, p0, Lsm/ab;->g:[B

    .line 106
    iget v0, p0, Lsm/ab;->h:I

    const/16 v1, 0x8

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/ccr;->a(IIZ)I

    move-result v0

    iput v0, p0, Lsm/ab;->h:I

    .line 107
    sget-object v0, Lsm/ab;->l:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lsm/ab;->l:Ljava/util/Map;

    .line 109
    sget-object v0, Lsm/ab;->l:Ljava/util/Map;

    const-string v1, ""

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    :cond_1
    sget-object v0, Lsm/ab;->l:Ljava/util/Map;

    const/16 v1, 0x9

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/ccr;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lsm/ab;->i:Ljava/util/Map;

    .line 112
    sget-object v0, Lsm/ab;->l:Ljava/util/Map;

    if-nez v0, :cond_2

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lsm/ab;->l:Ljava/util/Map;

    .line 114
    sget-object v0, Lsm/ab;->l:Ljava/util/Map;

    const-string v1, ""

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    :cond_2
    sget-object v0, Lsm/ab;->l:Ljava/util/Map;

    const/16 v1, 0xa

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/ccr;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lsm/ab;->j:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    return-void

    .line 117
    :catch_0
    move-exception v0

    .line 118
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 119
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RequestPacket decode error "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lsm/ab;->g:[B

    invoke-static {v3}, Lcom/kingroot/kinguser/ccq;->a([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 120
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a(Lcom/kingroot/kinguser/ccs;)V
    .locals 2

    .prologue
    .line 77
    iget-short v0, p0, Lsm/ab;->a:S

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/ccs;->a(SI)V

    .line 78
    iget-byte v0, p0, Lsm/ab;->b:B

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/ccs;->b(BI)V

    .line 79
    iget v0, p0, Lsm/ab;->c:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/ccs;->a(II)V

    .line 80
    iget v0, p0, Lsm/ab;->d:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/ccs;->a(II)V

    .line 81
    iget-object v0, p0, Lsm/ab;->e:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/ccs;->a(Ljava/lang/String;I)V

    .line 82
    iget-object v0, p0, Lsm/ab;->f:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/ccs;->a(Ljava/lang/String;I)V

    .line 83
    iget-object v0, p0, Lsm/ab;->g:[B

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/ccs;->a([BI)V

    .line 84
    iget v0, p0, Lsm/ab;->h:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/ccs;->a(II)V

    .line 85
    iget-object v0, p0, Lsm/ab;->i:Ljava/util/Map;

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/ccs;->a(Ljava/util/Map;I)V

    .line 86
    iget-object v0, p0, Lsm/ab;->j:Ljava/util/Map;

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/ccs;->a(Ljava/util/Map;I)V

    .line 88
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 63
    const/4 v0, 0x0

    .line 66
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 72
    :cond_0
    return-object v0

    .line 68
    :catch_0
    move-exception v1

    .line 70
    sget-boolean v1, Lsm/ab;->m:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 47
    check-cast p1, Lsm/ab;

    .line 49
    iget-short v1, p1, Lsm/ab;->a:S

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/cct;->a(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    iget-byte v1, p1, Lsm/ab;->b:B

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/cct;->a(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    iget v1, p1, Lsm/ab;->c:I

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/cct;->a(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    iget v1, p1, Lsm/ab;->d:I

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/cct;->a(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p1, Lsm/ab;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/kingroot/kinguser/cct;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p1, Lsm/ab;->f:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/kingroot/kinguser/cct;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p1, Lsm/ab;->g:[B

    invoke-static {v1, v2}, Lcom/kingroot/kinguser/cct;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    iget v1, p1, Lsm/ab;->h:I

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/cct;->a(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p1, Lsm/ab;->i:Ljava/util/Map;

    invoke-static {v1, v2}, Lcom/kingroot/kinguser/cct;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p1, Lsm/ab;->j:Ljava/util/Map;

    invoke-static {v1, v2}, Lcom/kingroot/kinguser/cct;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
