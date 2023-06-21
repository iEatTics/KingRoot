.class public Lcom/kingroot/kinguser/cdv;
.super Lcom/kingroot/kinguser/cdu;
.source "SourceFile"


# static fields
.field static bXH:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field static bXI:Ljava/util/HashMap;
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
.field protected bXG:Lsm/ab;

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 94
    sput-object v0, Lcom/kingroot/kinguser/cdv;->bXH:Ljava/util/HashMap;

    .line 95
    sput-object v0, Lcom/kingroot/kinguser/cdv;->bXI:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/kingroot/kinguser/cdu;-><init>()V

    .line 16
    new-instance v0, Lsm/ab;

    invoke-direct {v0}, Lsm/ab;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/cdv;->bXG:Lsm/ab;

    .line 277
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/cdv;->j:I

    .line 21
    iget-object v0, p0, Lcom/kingroot/kinguser/cdv;->bXG:Lsm/ab;

    const/4 v1, 0x2

    iput-short v1, v0, Lsm/ab;->a:S

    .line 22
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/kingroot/kinguser/cdu;-><init>()V

    .line 16
    new-instance v0, Lsm/ab;

    invoke-direct {v0}, Lsm/ab;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/cdv;->bXG:Lsm/ab;

    .line 277
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/cdv;->j:I

    .line 25
    if-eqz p1, :cond_0

    .line 26
    invoke-virtual {p0}, Lcom/kingroot/kinguser/cdv;->b()V

    .line 31
    :goto_0
    return-void

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cdv;->bXG:Lsm/ab;

    const/4 v1, 0x2

    iput-short v1, v0, Lsm/ab;->a:S

    goto :goto_0
.end method

.method private c()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 127
    new-instance v0, Lcom/kingroot/kinguser/ccr;

    iget-object v1, p0, Lcom/kingroot/kinguser/cdv;->bXG:Lsm/ab;

    iget-object v1, v1, Lsm/ab;->g:[B

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/ccr;-><init>([B)V

    .line 128
    iget-object v1, p0, Lcom/kingroot/kinguser/cdv;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ccr;->a(Ljava/lang/String;)I

    .line 129
    sget-object v1, Lcom/kingroot/kinguser/cdv;->bXH:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 130
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/kingroot/kinguser/cdv;->bXH:Ljava/util/HashMap;

    .line 131
    sget-object v1, Lcom/kingroot/kinguser/cdv;->bXH:Ljava/util/HashMap;

    const-string v2, ""

    new-array v3, v4, [B

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    :cond_0
    sget-object v1, Lcom/kingroot/kinguser/cdv;->bXH:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v4, v4}, Lcom/kingroot/kinguser/ccr;->a(Ljava/util/Map;IZ)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/cdv;->e:Ljava/util/HashMap;

    .line 134
    return-void
.end method

.method private d()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 159
    new-instance v0, Lcom/kingroot/kinguser/ccr;

    iget-object v1, p0, Lcom/kingroot/kinguser/cdv;->bXG:Lsm/ab;

    iget-object v1, v1, Lsm/ab;->g:[B

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/ccr;-><init>([B)V

    .line 160
    iget-object v1, p0, Lcom/kingroot/kinguser/cdv;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ccr;->a(Ljava/lang/String;)I

    .line 161
    sget-object v1, Lcom/kingroot/kinguser/cdv;->bXI:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 162
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/kingroot/kinguser/cdv;->bXI:Ljava/util/HashMap;

    .line 163
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 164
    const-string v2, ""

    new-array v3, v4, [B

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v2, Lcom/kingroot/kinguser/cdv;->bXI:Ljava/util/HashMap;

    const-string v3, ""

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    :cond_0
    sget-object v1, Lcom/kingroot/kinguser/cdv;->bXI:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v4, v4}, Lcom/kingroot/kinguser/ccr;->a(Ljava/util/Map;IZ)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/cdv;->a:Ljava/util/HashMap;

    .line 168
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/cdv;->bEP:Ljava/util/HashMap;

    .line 169
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/kingroot/kinguser/cdv;->bXG:Lsm/ab;

    iput p1, v0, Lsm/ab;->d:I

    .line 247
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/cdu;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
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
    invoke-super {p0, p1, p2}, Lcom/kingroot/kinguser/cdu;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 46
    return-void
.end method

.method public a([B)V
    .locals 2

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
    new-instance v0, Lcom/kingroot/kinguser/ccr;

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1}, Lcom/kingroot/kinguser/ccr;-><init>([BI)V

    .line 181
    iget-object v1, p0, Lcom/kingroot/kinguser/cdv;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ccr;->a(Ljava/lang/String;)I

    .line 183
    iget-object v1, p0, Lcom/kingroot/kinguser/cdv;->bXG:Lsm/ab;

    invoke-virtual {v1, v0}, Lsm/ab;->a(Lcom/kingroot/kinguser/ccr;)V

    .line 184
    iget-object v0, p0, Lcom/kingroot/kinguser/cdv;->bXG:Lsm/ab;

    iget-short v0, v0, Lsm/ab;->a:S

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 185
    invoke-direct {p0}, Lcom/kingroot/kinguser/cdv;->c()V

    .line 193
    :goto_0
    return-void

    .line 187
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/cdv;->e:Ljava/util/HashMap;

    .line 188
    invoke-direct {p0}, Lcom/kingroot/kinguser/cdv;->d()V
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

.method public a()[B
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 60
    iget-object v0, p0, Lcom/kingroot/kinguser/cdv;->bXG:Lsm/ab;

    iget-short v0, v0, Lsm/ab;->a:S

    if-ne v0, v3, :cond_3

    .line 61
    iget-object v0, p0, Lcom/kingroot/kinguser/cdv;->bXG:Lsm/ab;

    iget-object v0, v0, Lsm/ab;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/cdv;->bXG:Lsm/ab;

    iget-object v0, v0, Lsm/ab;->e:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/kingroot/kinguser/cdv;->bXG:Lsm/ab;

    iget-object v0, v0, Lsm/ab;->f:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/kingroot/kinguser/cdv;->bXG:Lsm/ab;

    iget-object v0, v0, Lsm/ab;->f:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/kingroot/kinguser/cdv;->bXG:Lsm/ab;

    iget-object v0, v0, Lsm/ab;->e:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 69
    iget-object v0, p0, Lcom/kingroot/kinguser/cdv;->bXG:Lsm/ab;

    const-string v1, ""

    iput-object v1, v0, Lsm/ab;->e:Ljava/lang/String;

    .line 71
    :cond_4
    iget-object v0, p0, Lcom/kingroot/kinguser/cdv;->bXG:Lsm/ab;

    iget-object v0, v0, Lsm/ab;->f:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 72
    iget-object v0, p0, Lcom/kingroot/kinguser/cdv;->bXG:Lsm/ab;

    const-string v1, ""

    iput-object v1, v0, Lsm/ab;->f:Ljava/lang/String;

    .line 75
    :cond_5
    new-instance v0, Lcom/kingroot/kinguser/ccs;

    invoke-direct {v0, v2}, Lcom/kingroot/kinguser/ccs;-><init>(I)V

    .line 76
    iget-object v1, p0, Lcom/kingroot/kinguser/cdv;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ccs;->a(Ljava/lang/String;)I

    .line 77
    iget-object v1, p0, Lcom/kingroot/kinguser/cdv;->bXG:Lsm/ab;

    iget-short v1, v1, Lsm/ab;->a:S

    if-ne v1, v3, :cond_6

    .line 78
    iget-object v1, p0, Lcom/kingroot/kinguser/cdv;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/ccs;->a(Ljava/util/Map;I)V

    .line 82
    :goto_0
    iget-object v1, p0, Lcom/kingroot/kinguser/cdv;->bXG:Lsm/ab;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ccs;->a()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/cct;->a(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    iput-object v0, v1, Lsm/ab;->g:[B

    .line 83
    new-instance v0, Lcom/kingroot/kinguser/ccs;

    invoke-direct {v0, v2}, Lcom/kingroot/kinguser/ccs;-><init>(I)V

    .line 84
    iget-object v1, p0, Lcom/kingroot/kinguser/cdv;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ccs;->a(Ljava/lang/String;)I

    .line 86
    iget-object v1, p0, Lcom/kingroot/kinguser/cdv;->bXG:Lsm/ab;

    invoke-virtual {v1, v0}, Lsm/ab;->a(Lcom/kingroot/kinguser/ccs;)V

    .line 87
    invoke-virtual {v0}, Lcom/kingroot/kinguser/ccs;->a()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/cct;->a(Ljava/nio/ByteBuffer;)[B

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
    iget-object v1, p0, Lcom/kingroot/kinguser/cdv;->e:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/ccs;->a(Ljava/util/Map;I)V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 52
    invoke-super {p0}, Lcom/kingroot/kinguser/cdu;->b()V

    .line 53
    iget-object v0, p0, Lcom/kingroot/kinguser/cdv;->bXG:Lsm/ab;

    const/4 v1, 0x3

    iput-short v1, v0, Lsm/ab;->a:S

    .line 54
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/kingroot/kinguser/cdv;->bXG:Lsm/ab;

    iput-object p1, v0, Lsm/ab;->e:Ljava/lang/String;

    .line 211
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/kingroot/kinguser/cdv;->bXG:Lsm/ab;

    iput-object p1, v0, Lsm/ab;->f:Ljava/lang/String;

    .line 229
    return-void
.end method
