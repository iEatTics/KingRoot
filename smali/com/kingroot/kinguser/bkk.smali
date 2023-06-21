.class public Lcom/kingroot/kinguser/bkk;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a()V
    .locals 2

    .prologue
    .line 31
    invoke-static {}, Lcom/kingroot/kinguser/bkd;->isCoreProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    :goto_0
    return-void

    .line 34
    :cond_0
    const-class v0, Lcom/kingroot/loader/sdk/service/IKlPackageManager;

    new-instance v1, Lcom/kingroot/kinguser/bkk$1;

    invoke-direct {v1}, Lcom/kingroot/kinguser/bkk$1;-><init>()V

    invoke-static {v0, v1}, Lcom/kingroot/loader/common/KlServiceManager;->registerService(Ljava/lang/Class;Lcom/kingroot/loader/common/KlServiceManager$a;)V

    .line 41
    const-class v0, Lcom/kingroot/loader/sdk/service/IKlConnectionManager;

    new-instance v1, Lcom/kingroot/kinguser/bkk$2;

    invoke-direct {v1}, Lcom/kingroot/kinguser/bkk$2;-><init>()V

    invoke-static {v0, v1}, Lcom/kingroot/loader/common/KlServiceManager;->registerService(Ljava/lang/Class;Lcom/kingroot/loader/common/KlServiceManager$a;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;ZLcom/kingroot/kinguser/bkc;)V
    .locals 1

    .prologue
    .line 22
    const-string v0, "KlMultiSdk init"

    invoke-static {v0}, Lcom/kingroot/kinguser/bkq;->i(Ljava/lang/String;)V

    .line 23
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/kingroot/kinguser/bkd;->en(Z)V

    .line 24
    invoke-static {p1}, Lcom/kingroot/kinguser/bkd;->em(Z)V

    .line 25
    invoke-static {p0, p2}, Lcom/kingroot/kinguser/bkd;->a(Landroid/content/Context;Lcom/kingroot/kinguser/bkc;)V

    .line 27
    invoke-static {}, Lcom/kingroot/kinguser/bkk;->a()V

    .line 28
    return-void
.end method
