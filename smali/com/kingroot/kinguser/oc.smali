.class public Lcom/kingroot/kinguser/oc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/cgj;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decrypt([B[B)[B
    .locals 2

    .prologue
    .line 36
    const/4 v0, 0x0

    .line 38
    :try_start_0
    invoke-static {p1, p2}, Lcom/kingroot/kinguser/ccc;->b([B[B)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 42
    :goto_0
    return-object v0

    .line 39
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public encrypt([B[B)[B
    .locals 2

    .prologue
    .line 24
    const/4 v0, 0x0

    .line 26
    :try_start_0
    invoke-static {p1, p2}, Lcom/kingroot/kinguser/ccc;->a([B[B)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 30
    :goto_0
    return-object v0

    .line 27
    :catch_0
    move-exception v1

    goto :goto_0
.end method
