.class Lcom/kingroot/kinguser/aek$4;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/aek;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/aek;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/aek;)V
    .locals 0

    .prologue
    .line 592
    iput-object p1, p0, Lcom/kingroot/kinguser/aek$4;->this$0:Lcom/kingroot/kinguser/aek;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/bed$a;)V
    .locals 7

    .prologue
    const/4 v2, 0x1

    .line 596
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/bek;->a(Lcom/kingroot/kinguser/bed$a;)V

    .line 597
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/kingroot/kinguser/bed$a;->nF()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 603
    :cond_0
    :goto_0
    return-void

    .line 600
    :cond_1
    invoke-interface {p1}, Lcom/kingroot/kinguser/bed$a;->nF()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kingroot/kinguser/u;

    .line 601
    invoke-interface {p1}, Lcom/kingroot/kinguser/bed$a;->nF()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 602
    iget-object v1, p0, Lcom/kingroot/kinguser/aek$4;->this$0:Lcom/kingroot/kinguser/aek;

    iget-object v0, p0, Lcom/kingroot/kinguser/aek$4;->this$0:Lcom/kingroot/kinguser/aek;

    iget-object v6, v0, Lcom/kingroot/kinguser/aek;->aeX:Lcom/kingroot/kingmaster/network/updata/ICheckIPCListener;

    invoke-static/range {v1 .. v6}, Lcom/kingroot/kinguser/aek;->a(Lcom/kingroot/kinguser/aek;ZLcom/kingroot/kinguser/u;JLcom/kingroot/kingmaster/network/updata/ICheckIPCListener;)V

    goto :goto_0
.end method
