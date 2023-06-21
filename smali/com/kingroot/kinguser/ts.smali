.class public Lcom/kingroot/kinguser/ts;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/tt;


# instance fields
.field private HD:Lcom/kingroot/common/framework/service/KServiceManager;

.field private mServiceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingroot/kinguser/to;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/ts;->mServiceMap:Ljava/util/HashMap;

    .line 27
    new-instance v0, Lcom/kingroot/common/framework/service/KServiceManager;

    iget-object v1, p0, Lcom/kingroot/kinguser/ts;->mServiceMap:Ljava/util/HashMap;

    invoke-direct {v0, p1, v1}, Lcom/kingroot/common/framework/service/KServiceManager;-><init>(Landroid/content/Context;Ljava/util/HashMap;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/ts;->HD:Lcom/kingroot/common/framework/service/KServiceManager;

    .line 28
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/kingroot/kinguser/ts;->HD:Lcom/kingroot/common/framework/service/KServiceManager;

    return-object v0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2

    .prologue
    .line 33
    :try_start_0
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->hU()Lcom/kingroot/kinguser/rh;

    move-result-object v0

    .line 34
    instance-of v1, v0, Lcom/kingroot/kinguser/rg;

    if-eqz v1, :cond_0

    .line 35
    check-cast v0, Lcom/kingroot/kinguser/rg;

    .line 36
    invoke-virtual {v0, p1, p2}, Lcom/kingroot/kinguser/rg;->a(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :cond_0
    :goto_0
    return-void

    .line 38
    :catch_0
    move-exception v0

    goto :goto_0
.end method
