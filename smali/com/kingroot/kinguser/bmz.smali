.class public final Lcom/kingroot/kinguser/bmz;
.super Lcom/kingroot/kinguser/bmy;
.source "SourceFile"


# static fields
.field private static bCF:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private static bCG:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[B>;>;"
        }
    .end annotation
.end field


# instance fields
.field private bCE:Lcom/kingx/cloudsdk/bw;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 94
    sput-object v0, Lcom/kingroot/kinguser/bmz;->bCF:Ljava/util/HashMap;

    .line 95
    sput-object v0, Lcom/kingroot/kinguser/bmz;->bCG:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/kingroot/kinguser/bmy;-><init>()V

    .line 16
    new-instance v0, Lcom/kingx/cloudsdk/bw;

    invoke-direct {v0}, Lcom/kingx/cloudsdk/bw;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bmz;->bCE:Lcom/kingx/cloudsdk/bw;

    .line 277
    iget-object v0, p0, Lcom/kingroot/kinguser/bmz;->bCE:Lcom/kingx/cloudsdk/bw;

    const/4 v1, 0x2

    iput-short v1, v0, Lcom/kingx/cloudsdk/bw;->he:S

    .line 22
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/kingroot/kinguser/bmy;-><init>()V

    .line 16
    new-instance v0, Lcom/kingx/cloudsdk/bw;

    invoke-direct {v0}, Lcom/kingx/cloudsdk/bw;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bmz;->bCE:Lcom/kingx/cloudsdk/bw;

    .line 277
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bmz;->agd()V

    .line 28
    return-void
.end method


# virtual methods
.method public final Z(I)V
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/kingroot/kinguser/bmz;->bCE:Lcom/kingx/cloudsdk/bw;

    iput p1, v0, Lcom/kingx/cloudsdk/bw;->hh:I

    .line 247
    return-void
.end method

.method public final aG(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/kingroot/kinguser/bmz;->bCE:Lcom/kingx/cloudsdk/bw;

    iput-object p1, v0, Lcom/kingx/cloudsdk/bw;->hi:Ljava/lang/String;

    .line 211
    return-void
.end method

.method public final agc()[B
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 60
    iget-object v0, p0, Lcom/kingroot/kinguser/bmz;->bCE:Lcom/kingx/cloudsdk/bw;

    iget-short v0, v0, Lcom/kingx/cloudsdk/bw;->he:S

    if-ne v0, v3, :cond_3

    .line 61
    iget-object v0, p0, Lcom/kingroot/kinguser/bmz;->bCE:Lcom/kingx/cloudsdk/bw;

    iget-object v0, v0, Lcom/kingx/cloudsdk/bw;->hi:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/bmz;->bCE:Lcom/kingx/cloudsdk/bw;

    iget-object v0, v0, Lcom/kingx/cloudsdk/bw;->hi:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "servantName can not is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bmz;->bCE:Lcom/kingx/cloudsdk/bw;

    iget-object v0, v0, Lcom/kingx/cloudsdk/bw;->hj:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/kingroot/kinguser/bmz;->bCE:Lcom/kingx/cloudsdk/bw;

    iget-object v0, v0, Lcom/kingx/cloudsdk/bw;->hj:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 65
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "funcName can not is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_3
    iget-object v0, p0, Lcom/kingroot/kinguser/bmz;->bCE:Lcom/kingx/cloudsdk/bw;

    iget-object v0, v0, Lcom/kingx/cloudsdk/bw;->hi:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 69
    iget-object v0, p0, Lcom/kingroot/kinguser/bmz;->bCE:Lcom/kingx/cloudsdk/bw;

    const-string v1, ""

    iput-object v1, v0, Lcom/kingx/cloudsdk/bw;->hi:Ljava/lang/String;

    .line 71
    :cond_4
    iget-object v0, p0, Lcom/kingroot/kinguser/bmz;->bCE:Lcom/kingx/cloudsdk/bw;

    iget-object v0, v0, Lcom/kingx/cloudsdk/bw;->hj:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 72
    iget-object v0, p0, Lcom/kingroot/kinguser/bmz;->bCE:Lcom/kingx/cloudsdk/bw;

    const-string v1, ""

    iput-object v1, v0, Lcom/kingx/cloudsdk/bw;->hj:Ljava/lang/String;

    .line 75
    :cond_5
    new-instance v0, Lcom/kingroot/kinguser/bnd;

    invoke-direct {v0, v2}, Lcom/kingroot/kinguser/bnd;-><init>(I)V

    .line 76
    iget-object v1, p0, Lcom/kingroot/kinguser/bmz;->bCB:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bnd;->mu(Ljava/lang/String;)I

    .line 77
    iget-object v1, p0, Lcom/kingroot/kinguser/bmz;->bCE:Lcom/kingx/cloudsdk/bw;

    iget-short v1, v1, Lcom/kingx/cloudsdk/bw;->he:S

    if-ne v1, v3, :cond_6

    .line 78
    iget-object v1, p0, Lcom/kingroot/kinguser/bmz;->bCz:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/bnd;->a(Ljava/util/Map;I)V

    .line 82
    :goto_0
    iget-object v1, p0, Lcom/kingroot/kinguser/bmz;->bCE:Lcom/kingx/cloudsdk/bw;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bnd;->agg()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bne;->a(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    iput-object v0, v1, Lcom/kingx/cloudsdk/bw;->hk:[B

    .line 83
    new-instance v0, Lcom/kingroot/kinguser/bnd;

    invoke-direct {v0, v2}, Lcom/kingroot/kinguser/bnd;-><init>(I)V

    .line 84
    iget-object v1, p0, Lcom/kingroot/kinguser/bmz;->bCB:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bnd;->mu(Ljava/lang/String;)I

    .line 86
    iget-object v1, p0, Lcom/kingroot/kinguser/bmz;->bCE:Lcom/kingx/cloudsdk/bw;

    invoke-virtual {v1, v0}, Lcom/kingx/cloudsdk/bw;->a(Lcom/kingroot/kinguser/bnd;)V

    .line 87
    invoke-virtual {v0}, Lcom/kingroot/kinguser/bnd;->agg()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bne;->a(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    .line 88
    array-length v1, v0

    .line 89
    add-int/lit8 v2, v1, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 90
    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 91
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0

    .line 80
    :cond_6
    iget-object v1, p0, Lcom/kingroot/kinguser/bmz;->bCD:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/bnd;->a(Ljava/util/Map;I)V

    goto :goto_0
.end method

.method public final agd()V
    .locals 2

    .prologue
    .line 52
    invoke-super {p0}, Lcom/kingroot/kinguser/bmy;->agd()V

    .line 53
    iget-object v0, p0, Lcom/kingroot/kinguser/bmz;->bCE:Lcom/kingx/cloudsdk/bw;

    const/4 v1, 0x3

    iput-short v1, v0, Lcom/kingx/cloudsdk/bw;->he:S

    .line 54
    return-void
.end method

.method public final ms(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/kingroot/kinguser/bmz;->bCE:Lcom/kingx/cloudsdk/bw;

    iput-object p1, v0, Lcom/kingx/cloudsdk/bw;->hj:Ljava/lang/String;

    .line 229
    return-void
.end method

.method public final put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 42
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "put name can not startwith . , now is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/kingroot/kinguser/bmy;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 46
    return-void
.end method

.method public final s([B)V
    .locals 4

    .prologue
    const/4 v1, 0x4

    .line 175
    array-length v0, p1

    if-ge v0, v1, :cond_0

    .line 176
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "decode package must include size head"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_0
    :try_start_0
    new-instance v0, Lcom/kingroot/kinguser/bnc;

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1}, Lcom/kingroot/kinguser/bnc;-><init>([BI)V

    .line 181
    iget-object v1, p0, Lcom/kingroot/kinguser/bmz;->bCB:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bnc;->mu(Ljava/lang/String;)I

    .line 183
    iget-object v1, p0, Lcom/kingroot/kinguser/bmz;->bCE:Lcom/kingx/cloudsdk/bw;

    invoke-virtual {v1, v0}, Lcom/kingx/cloudsdk/bw;->a(Lcom/kingroot/kinguser/bnc;)V

    .line 184
    iget-object v0, p0, Lcom/kingroot/kinguser/bmz;->bCE:Lcom/kingx/cloudsdk/bw;

    iget-short v0, v0, Lcom/kingx/cloudsdk/bw;->he:S

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 185
    new-instance v0, Lcom/kingroot/kinguser/bnc;

    iget-object v1, p0, Lcom/kingroot/kinguser/bmz;->bCE:Lcom/kingx/cloudsdk/bw;

    iget-object v1, v1, Lcom/kingx/cloudsdk/bw;->hk:[B

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/bnc;-><init>([B)V

    iget-object v1, p0, Lcom/kingroot/kinguser/bmz;->bCB:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bnc;->mu(Ljava/lang/String;)I

    sget-object v1, Lcom/kingroot/kinguser/bmz;->bCF:Ljava/util/HashMap;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/kingroot/kinguser/bmz;->bCF:Ljava/util/HashMap;

    const-string v2, ""

    const/4 v3, 0x0

    new-array v3, v3, [B

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    sget-object v1, Lcom/kingroot/kinguser/bmz;->bCF:Ljava/util/HashMap;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/kingroot/kinguser/bnc;->a(Ljava/util/Map;IZ)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bmz;->bCD:Ljava/util/HashMap;

    .line 193
    :goto_0
    return-void

    .line 187
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/bmz;->bCD:Ljava/util/HashMap;

    .line 188
    new-instance v0, Lcom/kingroot/kinguser/bnc;

    iget-object v1, p0, Lcom/kingroot/kinguser/bmz;->bCE:Lcom/kingx/cloudsdk/bw;

    iget-object v1, v1, Lcom/kingx/cloudsdk/bw;->hk:[B

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/bnc;-><init>([B)V

    iget-object v1, p0, Lcom/kingroot/kinguser/bmz;->bCB:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bnc;->mu(Ljava/lang/String;)I

    sget-object v1, Lcom/kingroot/kinguser/bmz;->bCG:Ljava/util/HashMap;

    if-nez v1, :cond_3

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/kingroot/kinguser/bmz;->bCG:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, ""

    const/4 v3, 0x0

    new-array v3, v3, [B

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/kingroot/kinguser/bmz;->bCG:Ljava/util/HashMap;

    const-string v3, ""

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    sget-object v1, Lcom/kingroot/kinguser/bmz;->bCG:Ljava/util/HashMap;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/kingroot/kinguser/bnc;->a(Ljava/util/Map;IZ)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bmz;->bCz:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 190
    :catch_0
    move-exception v0

    .line 191
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
