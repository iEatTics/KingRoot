.class public Lcom/kingroot/kinguser/receiver/InstallReceiver$InstallProcessThread$1;
.super Lcom/kingroot/kinguser/examination/service/ICloudCheckCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bba$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/bba$a;

.field final synthetic val$newInstallPkg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/bba$a;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/kingroot/kinguser/receiver/InstallReceiver$InstallProcessThread$1;->this$0:Lcom/kingroot/kinguser/bba$a;

    iput-object p2, p0, Lcom/kingroot/kinguser/receiver/InstallReceiver$InstallProcessThread$1;->val$newInstallPkg:Ljava/lang/String;

    invoke-direct {p0}, Lcom/kingroot/kinguser/examination/service/ICloudCheckCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(I)V
    .locals 2

    .prologue
    .line 184
    invoke-static {}, Lcom/kingroot/kinguser/bcs;->Yc()Lcom/kingroot/kinguser/bcs;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bcs;->dF(Z)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 185
    iget-object v1, p0, Lcom/kingroot/kinguser/receiver/InstallReceiver$InstallProcessThread$1;->val$newInstallPkg:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    invoke-static {}, Lcom/kingroot/kinguser/bct;->Yf()V

    .line 188
    :cond_0
    return-void
.end method

.method public onRiskFound(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 178
    invoke-static {}, Lcom/kingroot/kinguser/bct;->Yf()V

    .line 179
    return-void
.end method
