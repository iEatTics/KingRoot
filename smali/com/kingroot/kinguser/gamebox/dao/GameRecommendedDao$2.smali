.class public Lcom/kingroot/kinguser/gamebox/dao/GameRecommendedDao$2;
.super Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsDetailListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/atb;->a(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;Lcom/kingroot/kinguser/gamebox/dao/ILoadRecommendedSoftDetailListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/atb;

.field final synthetic val$listener:Lcom/kingroot/kinguser/gamebox/dao/ILoadRecommendedSoftDetailListener;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/atb;Lcom/kingroot/kinguser/gamebox/dao/ILoadRecommendedSoftDetailListener;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/kingroot/kinguser/gamebox/dao/GameRecommendedDao$2;->this$0:Lcom/kingroot/kinguser/atb;

    iput-object p2, p0, Lcom/kingroot/kinguser/gamebox/dao/GameRecommendedDao$2;->val$listener:Lcom/kingroot/kinguser/gamebox/dao/ILoadRecommendedSoftDetailListener;

    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsDetailListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(ILcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;)V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/kingroot/kinguser/gamebox/dao/GameRecommendedDao$2;->val$listener:Lcom/kingroot/kinguser/gamebox/dao/ILoadRecommendedSoftDetailListener;

    if-eqz v0, :cond_0

    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/gamebox/dao/GameRecommendedDao$2;->val$listener:Lcom/kingroot/kinguser/gamebox/dao/ILoadRecommendedSoftDetailListener;

    invoke-interface {v0, p2}, Lcom/kingroot/kinguser/gamebox/dao/ILoadRecommendedSoftDetailListener;->onLoadSoftDetailEnd(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 149
    :catch_0
    move-exception v0

    goto :goto_0
.end method
