.class final Lcom/kingroot/kinguser/examination/service/CloudCheckService$6;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/examination/service/CloudCheckService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 866
    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/bed$a;)V
    .locals 8
    .param p1    # Lcom/kingroot/kinguser/bed$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 870
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/bek;->a(Lcom/kingroot/kinguser/bed$a;)V

    .line 873
    invoke-interface {p1}, Lcom/kingroot/kinguser/bed$a;->nF()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 875
    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 901
    :goto_0
    return-void

    .line 879
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 880
    new-instance v5, Lcom/kingroot/kinguser/bjg;

    const-string v2, "autostart_enable_settings.conf"

    invoke-direct {v5, v2}, Lcom/kingroot/kinguser/bjg;-><init>(Ljava/lang/String;)V

    .line 881
    invoke-virtual {v5}, Lcom/kingroot/kinguser/bjg;->adJ()Ljava/lang/Object;

    move-result-object v2

    .line 882
    invoke-static {v2}, Lcom/kingroot/kinguser/bjg;->u(Ljava/lang/Object;)Ljava/util/HashMap;

    move-result-object v6

    move v2, v1

    .line 884
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 885
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 886
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 892
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 894
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v1

    const v2, 0x1882e

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/ady;->bi(I)V

    move v2, v3

    .line 895
    goto :goto_1

    .line 897
    :cond_2
    if-eqz v2, :cond_3

    .line 898
    invoke-virtual {v5, v6}, Lcom/kingroot/kinguser/bjg;->t(Ljava/lang/Object;)Z

    .line 900
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Lcom/kingroot/kinguser/bja;->bW(Ljava/util/List;)V

    goto :goto_0
.end method
