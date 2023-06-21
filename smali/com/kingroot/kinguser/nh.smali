.class public abstract Lcom/kingroot/kinguser/nh;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static s(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Properties;
    .locals 3

    .prologue
    .line 21
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 23
    :try_start_0
    invoke-static {p0}, Lcom/kingroot/kinguser/nk;->bM(Ljava/lang/String;)[B

    move-result-object v1

    .line 24
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/kingroot/kinguser/jo;->c([B)[B

    move-result-object v2

    .line 25
    invoke-static {v2, v1}, Lcom/kingroot/kinguser/jo;->b([B[B)[B

    move-result-object v1

    .line 26
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 27
    invoke-virtual {v0, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 28
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :goto_0
    return-object v0

    .line 29
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static t(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Properties;
    .locals 3

    .prologue
    .line 41
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 43
    :try_start_0
    invoke-static {p0}, Lcom/kingroot/kinguser/nk;->bL(Ljava/lang/String;)[B

    move-result-object v0

    .line 44
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/kingroot/kinguser/jo;->c([B)[B

    move-result-object v2

    .line 45
    invoke-static {v2, v0}, Lcom/kingroot/kinguser/jo;->b([B[B)[B

    move-result-object v0

    .line 46
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 47
    invoke-virtual {v1, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 48
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_0
    return-object v1

    .line 49
    :catch_0
    move-exception v0

    .line 50
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/util/Properties;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 62
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 63
    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/kinguser/jo;->c([B)[B

    move-result-object v1

    .line 65
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kingroot/kinguser/jo;->a([B[B)[B

    move-result-object v1

    .line 66
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 67
    invoke-static {v1, p1}, Lcom/kingroot/kinguser/nk;->b([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 69
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
