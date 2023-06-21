.class public Lcom/kingroot/kinguser/ajh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final atI:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/kingroot/kinguser/ajh;->atI:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x64t
        0x65t
        0x78t
    .end array-data
.end method

.method public static D(Ljava/io/File;)I
    .locals 3

    .prologue
    const/4 v0, 0x4

    .line 17
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 35
    :cond_0
    :goto_0
    return v0

    .line 21
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/kingroot/kinguser/rs;->h(Ljava/lang/String;I)[B

    move-result-object v1

    .line 23
    if-eqz v1, :cond_0

    .line 27
    :try_start_0
    sget-object v2, Lcom/kingroot/kinguser/ajh;->atI:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 28
    const/4 v0, 0x1

    goto :goto_0

    .line 31
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static E(Ljava/io/File;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 39
    invoke-static {p0}, Lcom/kingroot/kinguser/ajh;->D(Ljava/io/File;)I

    move-result v1

    .line 40
    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
