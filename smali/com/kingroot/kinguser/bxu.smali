.class public Lcom/kingroot/kinguser/bxu;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static bTx:Ljava/lang/Object;

.field private static bTy:Ljava/lang/reflect/Method;

.field private static bTz:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 15
    sput-object v0, Lcom/kingroot/kinguser/bxu;->bTx:Ljava/lang/Object;

    .line 17
    sput-object v0, Lcom/kingroot/kinguser/bxu;->bTy:Ljava/lang/reflect/Method;

    .line 22
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 24
    :try_start_0
    const-string v0, "libcore.io.Libcore"

    const-string v1, "os"

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bxw;->bb(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/bxu;->bTx:Ljava/lang/Object;

    .line 25
    const-string v0, "libcore.io.Os"

    const-string v1, "stat"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/bxw;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/bxu;->bTy:Ljava/lang/reflect/Method;

    .line 26
    const/4 v0, 0x1

    sput-boolean v0, Lcom/kingroot/kinguser/bxu;->bTz:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :goto_0
    return-void

    .line 27
    :catch_0
    move-exception v0

    .line 28
    sput-boolean v5, Lcom/kingroot/kinguser/bxu;->bTz:Z

    goto :goto_0

    .line 31
    :cond_0
    sput-boolean v5, Lcom/kingroot/kinguser/bxu;->bTz:Z

    goto :goto_0
.end method

.method public static isAvailable()Z
    .locals 1

    .prologue
    .line 36
    sget-boolean v0, Lcom/kingroot/kinguser/bxu;->bTz:Z

    return v0
.end method

.method public static nx(Ljava/lang/String;)I
    .locals 4
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-static {}, Lcom/kingroot/kinguser/bxu;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 45
    :cond_0
    :goto_0
    return v0

    .line 42
    :cond_1
    sget-object v1, Lcom/kingroot/kinguser/bxu;->bTy:Ljava/lang/reflect/Method;

    sget-object v2, Lcom/kingroot/kinguser/bxu;->bTx:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 43
    if-eqz v1, :cond_0

    .line 45
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "st_mode"

    invoke-static {v0, v2, v1}, Lcom/kingroot/kinguser/bxw;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method
