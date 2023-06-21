.class Lcom/kingroot/kinguser/aoj$7;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/aoj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/aoj;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/aoj;)V
    .locals 0

    .prologue
    .line 705
    iput-object p1, p0, Lcom/kingroot/kinguser/aoj$7;->this$0:Lcom/kingroot/kinguser/aoj;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 708
    iget-object v0, p0, Lcom/kingroot/kinguser/aoj$7;->this$0:Lcom/kingroot/kinguser/aoj;

    invoke-static {}, Lcom/kingroot/kinguser/alv;->Hq()Lcom/kingroot/kinguser/amu;

    move-result-object v1

    invoke-interface {v1}, Lcom/kingroot/kinguser/amu;->Hy()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/aoj;->a(Lcom/kingroot/kinguser/aoj;Ljava/util/List;)Ljava/util/List;

    .line 709
    iget-object v0, p0, Lcom/kingroot/kinguser/aoj$7;->this$0:Lcom/kingroot/kinguser/aoj;

    invoke-static {v0}, Lcom/kingroot/kinguser/aoj;->o(Lcom/kingroot/kinguser/aoj;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 711
    if-lez v0, :cond_0

    .line 712
    new-instance v1, Lcom/kingroot/kinguser/aoj$7$1;

    invoke-direct {v1, p0, v0}, Lcom/kingroot/kinguser/aoj$7$1;-><init>(Lcom/kingroot/kinguser/aoj$7;I)V

    invoke-static {v1}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 734
    :goto_0
    return-void

    .line 732
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/aoj$7;->this$0:Lcom/kingroot/kinguser/aoj;

    invoke-static {v0}, Lcom/kingroot/kinguser/aoj;->p(Lcom/kingroot/kinguser/aoj;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
