.class public Loicq/wlogin_sdk/b/cq;
.super Loicq/wlogin_sdk/b/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Loicq/wlogin_sdk/b/b;-><init>()V

    const/16 v0, 0x511

    iput v0, p0, Loicq/wlogin_sdk/b/cq;->h:I

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)[B
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/16 v0, 0x400

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {v5, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/16 v4, 0x29

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-nez v1, :cond_4

    if-lez v7, :cond_4

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/high16 v1, 0x100000

    and-int/2addr v1, v4

    if-lez v1, :cond_2

    move v1, v2

    :goto_1
    const/high16 v8, 0x8000000

    and-int/2addr v4, v8

    if-lez v4, :cond_3

    move v4, v2

    :goto_2
    if-eqz v1, :cond_6

    int-to-byte v1, v2

    :goto_3
    if-eqz v4, :cond_1

    or-int/lit8 v1, v1, 0x2

    int-to-byte v1, v1

    :cond_1
    add-int/lit8 v4, v7, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v5, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    int-to-short v1, v1

    invoke-virtual {v5, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    move v4, v3

    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_4

    :cond_5
    iget v0, p0, Loicq/wlogin_sdk/b/cq;->h:I

    invoke-virtual {p0, v0}, Loicq/wlogin_sdk/b/cq;->b(I)V

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Loicq/wlogin_sdk/b/cq;->c([BI)V

    invoke-virtual {p0}, Loicq/wlogin_sdk/b/cq;->e()V

    invoke-virtual {p0}, Loicq/wlogin_sdk/b/cq;->b()[B

    move-result-object v0

    return-object v0

    :cond_6
    move v1, v3

    goto :goto_3
.end method
