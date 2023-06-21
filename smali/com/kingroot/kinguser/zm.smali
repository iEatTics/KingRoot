.class public final Lcom/kingroot/kinguser/zm;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/zm$c;,
        Lcom/kingroot/kinguser/zm$a;,
        Lcom/kingroot/kinguser/zm$d;,
        Lcom/kingroot/kinguser/zm$b;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static M(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/zm$d;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    new-instance v0, Lcom/kingroot/kinguser/zm$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/zm$1;-><init>(Ljava/util/List;)V

    .line 46
    invoke-virtual {v0}, Lcom/kingroot/kinguser/zm$1;->ny()Z

    .line 47
    return-void
.end method

.method public static varargs a([Lcom/kingroot/kinguser/zm$d;)V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Lcom/kingroot/kinguser/zm$2;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/zm$2;-><init>([Lcom/kingroot/kinguser/zm$d;)V

    .line 62
    invoke-virtual {v0}, Lcom/kingroot/kinguser/zm$2;->ny()Z

    .line 63
    return-void
.end method

.method public static a(Lcom/kingroot/kinguser/zm$d;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 98
    .line 100
    new-instance v2, Ljava/io/File;

    invoke-interface {p0}, Lcom/kingroot/kinguser/zm$d;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 102
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kingroot/kinguser/zm$b;->dz(Ljava/lang/String;)Lcom/kingroot/kinguser/zm$c;

    move-result-object v3

    .line 103
    invoke-virtual {v3}, Lcom/kingroot/kinguser/zm$c;->pz()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 105
    invoke-static {v2}, Lcom/kingroot/kinguser/rs;->p(Ljava/io/File;)J

    move-result-wide v4

    .line 106
    invoke-static {v3}, Lcom/kingroot/kinguser/zm$c;->b(Lcom/kingroot/kinguser/zm$c;)J

    move-result-wide v2

    cmp-long v2, v4, v2

    if-nez v2, :cond_1

    move v2, v0

    .line 111
    :goto_0
    if-nez v2, :cond_0

    .line 113
    invoke-interface {p0}, Lcom/kingroot/kinguser/zm$d;->px()Z

    move-result v2

    .line 114
    if-eqz v2, :cond_0

    .line 116
    new-instance v1, Ljava/io/File;

    invoke-interface {p0}, Lcom/kingroot/kinguser/zm$d;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 117
    invoke-static {v1}, Lcom/kingroot/kinguser/rs;->p(Ljava/io/File;)J

    move-result-wide v2

    .line 118
    new-instance v1, Lcom/kingroot/kinguser/zm$c;

    invoke-interface {p0}, Lcom/kingroot/kinguser/zm$d;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/kingroot/kinguser/zm$c;-><init>(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v1, v2, v3}, Lcom/kingroot/kinguser/zm$c;->Z(J)V

    .line 120
    invoke-static {v1}, Lcom/kingroot/kinguser/zm$b;->a(Lcom/kingroot/kinguser/zm$c;)V

    .line 124
    :goto_1
    return v0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    move v2, v1

    goto :goto_0
.end method

.method public static varargs b([Lcom/kingroot/kinguser/zm$d;)V
    .locals 3

    .prologue
    .line 70
    array-length v1, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p0, v0

    .line 71
    invoke-static {v2}, Lcom/kingroot/kinguser/zm;->a(Lcom/kingroot/kinguser/zm$d;)Z

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 73
    :cond_0
    return-void
.end method
