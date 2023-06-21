.class final Lcom/kingroot/kinguser/activitys/SelectAppsActivity$2;
.super Lcom/kingroot/kinguser/axb$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/activitys/SelectAppsActivity;->f(Landroid/app/Activity;)Lcom/kingroot/kinguser/ym;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/kingroot/kinguser/axb$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/HashSet;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lcom/kingroot/kinguser/afk;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 96
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 97
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/afk;

    .line 98
    iget-object v0, v0, Lcom/kingroot/kinguser/afk;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 102
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v2, Lcom/kingroot/kinguser/bed;

    sget-object v3, Lcom/kingroot/kinguser/bem;->bll:Lcom/kingroot/kinguser/bem;

    sget-object v4, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    const/4 v5, 0x0

    new-instance v6, Lcom/kingroot/kinguser/activitys/SelectAppsActivity$2$1;

    invoke-direct {v6, p0, v1}, Lcom/kingroot/kinguser/activitys/SelectAppsActivity$2$1;-><init>(Lcom/kingroot/kinguser/activitys/SelectAppsActivity$2;Ljava/util/List;)V

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 110
    return-void
.end method
