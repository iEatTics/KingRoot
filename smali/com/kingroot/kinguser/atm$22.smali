.class Lcom/kingroot/kinguser/atm$22;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/atm;->oG()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/atm;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/atm;)V
    .locals 0

    .prologue
    .line 342
    iput-object p1, p0, Lcom/kingroot/kinguser/atm$22;->this$0:Lcom/kingroot/kinguser/atm;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 345
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 346
    iget-object v0, p0, Lcom/kingroot/kinguser/atm$22;->this$0:Lcom/kingroot/kinguser/atm;

    invoke-static {}, Lcom/kingroot/kinguser/atu;->OH()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/atm;->a(Lcom/kingroot/kinguser/atm;Ljava/util/List;)Ljava/util/List;

    .line 347
    iget-object v0, p0, Lcom/kingroot/kinguser/atm$22;->this$0:Lcom/kingroot/kinguser/atm;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/atm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 351
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/atm$22;->this$0:Lcom/kingroot/kinguser/atm;

    invoke-static {v0}, Lcom/kingroot/kinguser/atm;->f(Lcom/kingroot/kinguser/atm;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/kingroot/kinguser/atm$22;->this$0:Lcom/kingroot/kinguser/atm;

    invoke-static {v0}, Lcom/kingroot/kinguser/atm;->g(Lcom/kingroot/kinguser/atm;)V

    goto :goto_0
.end method
