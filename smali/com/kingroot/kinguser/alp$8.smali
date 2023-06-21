.class Lcom/kingroot/kinguser/alp$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/buj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/alp;->a(Ljava/lang/String;Ljava/lang/String;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IMergeApkPatchListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ayh:Lcom/kingroot/kinguser/alp;

.field final synthetic ayz:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IMergeApkPatchListener;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/alp;Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IMergeApkPatchListener;)V
    .locals 0

    .prologue
    .line 589
    iput-object p1, p0, Lcom/kingroot/kinguser/alp$8;->ayh:Lcom/kingroot/kinguser/alp;

    iput-object p2, p0, Lcom/kingroot/kinguser/alp$8;->ayz:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IMergeApkPatchListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMergeResult(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 592
    iget-object v0, p0, Lcom/kingroot/kinguser/alp$8;->ayz:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IMergeApkPatchListener;

    if-eqz v0, :cond_0

    .line 594
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/alp$8;->ayz:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IMergeApkPatchListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IMergeApkPatchListener;->onMergeResult(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 599
    :cond_0
    :goto_0
    return-void

    .line 595
    :catch_0
    move-exception v0

    goto :goto_0
.end method
