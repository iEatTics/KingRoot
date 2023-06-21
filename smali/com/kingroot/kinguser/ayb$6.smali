.class Lcom/kingroot/kinguser/ayb$6;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/ayb;->Ub()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/ayb;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/ayb;)V
    .locals 0

    .prologue
    .line 363
    iput-object p1, p0, Lcom/kingroot/kinguser/ayb$6;->this$0:Lcom/kingroot/kinguser/ayb;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 366
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 368
    iget-object v0, p0, Lcom/kingroot/kinguser/ayb$6;->this$0:Lcom/kingroot/kinguser/ayb;

    invoke-static {v0}, Lcom/kingroot/kinguser/ayb;->d(Lcom/kingroot/kinguser/ayb;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/apu;->k(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)Z

    move-result v0

    .line 370
    if-nez v0, :cond_0

    .line 375
    :goto_0
    return-void

    .line 374
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/alm;->GQ()Lcom/kingroot/kinguser/asy;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/ayb$6;->this$0:Lcom/kingroot/kinguser/ayb;

    invoke-static {v1}, Lcom/kingroot/kinguser/ayb;->d(Lcom/kingroot/kinguser/ayb;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;->l(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/ayb$6;->this$0:Lcom/kingroot/kinguser/ayb;

    invoke-static {v2}, Lcom/kingroot/kinguser/ayb;->e(Lcom/kingroot/kinguser/ayb;)Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/kingroot/kinguser/asy;->a(Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;)V

    goto :goto_0
.end method
