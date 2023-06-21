.class public final Lcom/kingroot/kinguser/ni;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/ni$c;,
        Lcom/kingroot/kinguser/ni$a;,
        Lcom/kingroot/kinguser/ni$d;,
        Lcom/kingroot/kinguser/ni$b;
    }
.end annotation


# static fields
.field private static xb:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/16 v0, 0x28

    sput v0, Lcom/kingroot/kinguser/ni;->xb:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static varargs a([Lcom/kingroot/kinguser/ni$d;)V
    .locals 3

    .prologue
    .line 34
    array-length v1, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p0, v0

    .line 35
    invoke-static {v2}, Lcom/kingroot/kinguser/ni;->a(Lcom/kingroot/kinguser/ni$d;)Z

    .line 34
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 37
    :cond_0
    return-void
.end method

.method public static a(Lcom/kingroot/kinguser/ni$d;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 45
    .line 47
    new-instance v2, Ljava/io/File;

    invoke-interface {p0}, Lcom/kingroot/kinguser/ni$d;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 51
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kingroot/kinguser/ni$b;->bJ(Ljava/lang/String;)Lcom/kingroot/kinguser/ni$c;

    move-result-object v3

    .line 52
    invoke-virtual {v3}, Lcom/kingroot/kinguser/ni$c;->ff()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 56
    invoke-static {v2}, Lcom/kingroot/kinguser/nk;->m(Ljava/io/File;)J

    move-result-wide v4

    .line 57
    invoke-static {v3}, Lcom/kingroot/kinguser/ni$c;->b(Lcom/kingroot/kinguser/ni$c;)J

    move-result-wide v2

    cmp-long v2, v4, v2

    if-nez v2, :cond_1

    move v2, v0

    .line 65
    :goto_0
    if-nez v2, :cond_0

    .line 67
    invoke-interface {p0}, Lcom/kingroot/kinguser/ni$d;->fd()Z

    move-result v2

    .line 68
    if-eqz v2, :cond_0

    .line 70
    new-instance v1, Ljava/io/File;

    invoke-interface {p0}, Lcom/kingroot/kinguser/ni$d;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-static {v1}, Lcom/kingroot/kinguser/nk;->m(Ljava/io/File;)J

    move-result-wide v2

    .line 72
    new-instance v1, Lcom/kingroot/kinguser/ni$c;

    invoke-interface {p0}, Lcom/kingroot/kinguser/ni$d;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/kingroot/kinguser/ni$c;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v1, v2, v3}, Lcom/kingroot/kinguser/ni$c;->c(J)V

    .line 74
    invoke-static {v1}, Lcom/kingroot/kinguser/ni$b;->a(Lcom/kingroot/kinguser/ni$c;)V

    .line 78
    :goto_1
    return v0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    move v2, v1

    goto :goto_0
.end method

.method static synthetic fc()I
    .locals 1

    .prologue
    .line 19
    sget v0, Lcom/kingroot/kinguser/ni;->xb:I

    return v0
.end method
