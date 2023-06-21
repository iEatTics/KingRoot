.class Lcom/kingroot/kinguser/aoj$5$2;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/aoj$5;->f(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aEW:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;

.field final synthetic aFZ:Lcom/kingroot/kinguser/aoj$5;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/aoj$5;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;)V
    .locals 0

    .prologue
    .line 441
    iput-object p1, p0, Lcom/kingroot/kinguser/aoj$5$2;->aFZ:Lcom/kingroot/kinguser/aoj$5;

    iput-object p2, p0, Lcom/kingroot/kinguser/aoj$5$2;->aEW:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 444
    invoke-static {}, Lcom/kingroot/kinguser/alv;->Hq()Lcom/kingroot/kinguser/amu;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/aoj$5$2;->aEW:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/kingroot/kinguser/amu;->a(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;Z)V

    .line 446
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/aoj$5$2;->aFZ:Lcom/kingroot/kinguser/aoj$5;

    iget-object v1, v1, Lcom/kingroot/kinguser/aoj$5;->this$0:Lcom/kingroot/kinguser/aoj;

    invoke-static {v1}, Lcom/kingroot/kinguser/aoj;->i(Lcom/kingroot/kinguser/aoj;)Lcom/kingroot/kinguser/bed;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 447
    return-void
.end method
