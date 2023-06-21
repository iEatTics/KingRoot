.class Lcom/kingroot/kinguser/bay$1;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bev:Lcom/kingroot/kinguser/bay;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bay;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/kingroot/kinguser/bay$1;->bev:Lcom/kingroot/kinguser/bay;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/bed$a;)V
    .locals 4
    .param p1    # Lcom/kingroot/kinguser/bed$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 48
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/bek;->a(Lcom/kingroot/kinguser/bed$a;)V

    .line 50
    invoke-interface {p1}, Lcom/kingroot/kinguser/bed$a;->nF()Ljava/util/List;

    move-result-object v0

    .line 51
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 59
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/vb;->O(Landroid/content/Context;)B

    move-result v0

    .line 60
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 63
    invoke-static {}, Lcom/kingroot/kinguser/bak;->Vx()Lcom/kingroot/kinguser/bak;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/kingroot/kinguser/bak;->hK(I)V

    .line 67
    invoke-static {}, Lcom/kingroot/kinguser/arv;->NB()V

    .line 70
    invoke-static {}, Lcom/kingroot/kinguser/arv;->Nz()Lcom/kingroot/kinguser/arv;

    move-result-object v1

    .line 71
    invoke-virtual {v1}, Lcom/kingroot/kinguser/arv;->getCloudCheckFailedAppsCache()Ljava/util/List;

    move-result-object v2

    .line 72
    invoke-static {v2}, Lcom/kingroot/kinguser/yy;->c(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 74
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/kingroot/kinguser/arv;->cloudCheckApps(Ljava/util/List;Lcom/kingroot/kinguser/examination/service/ICloudCheckCallback;)V

    .line 79
    :cond_2
    if-nez v0, :cond_3

    .line 81
    invoke-static {}, Lcom/kingroot/kinguser/bay;->jJ()V

    .line 83
    invoke-static {}, Lcom/kingroot/kinguser/amz;->II()Lcom/kingroot/kinguser/amz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/amz;->IG()V

    .line 86
    invoke-static {}, Lcom/kingroot/kinguser/asl;->NW()Lcom/kingroot/kinguser/asl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/asl;->NY()V

    .line 89
    :cond_3
    invoke-static {}, Lcom/kingroot/kinguser/avd;->Rq()Lcom/kingroot/kinguser/ave;

    move-result-object v0

    invoke-interface {v0}, Lcom/kingroot/kinguser/ave;->Rl()V

    goto :goto_0
.end method
