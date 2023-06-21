.class Lcom/kingroot/kinguser/alp$13;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/alp;->a(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsDetailListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ayI:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

.field final synthetic ayJ:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsDetailListener;

.field final synthetic ayh:Lcom/kingroot/kinguser/alp;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/alp;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsDetailListener;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/kingroot/kinguser/alp$13;->ayh:Lcom/kingroot/kinguser/alp;

    iput-object p2, p0, Lcom/kingroot/kinguser/alp$13;->ayI:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    iput-object p3, p0, Lcom/kingroot/kinguser/alp$13;->ayJ:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsDetailListener;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 197
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/vb;->O(Landroid/content/Context;)B

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 198
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x1890a

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 202
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/btx;->aid()Lcom/kingroot/kinguser/btx;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/alp$13;->ayI:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->If()Lcom/tencent/qqpimsecure/seachsdk/common/AppDeatailInfo;

    move-result-object v1

    new-instance v2, Lcom/kingroot/kinguser/alp$13$1;

    invoke-direct {v2, p0}, Lcom/kingroot/kinguser/alp$13$1;-><init>(Lcom/kingroot/kinguser/alp$13;)V

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/btx;->a(Lcom/tencent/qqpimsecure/seachsdk/common/AppDeatailInfo;Lcom/kingroot/kinguser/buc;)V

    .line 231
    return-void
.end method
