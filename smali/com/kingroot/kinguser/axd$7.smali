.class Lcom/kingroot/kinguser/axd$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axd;->TN()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/axd;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axd;)V
    .locals 0

    .prologue
    .line 496
    iput-object p1, p0, Lcom/kingroot/kinguser/axd$7;->this$0:Lcom/kingroot/kinguser/axd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 499
    iget-object v0, p0, Lcom/kingroot/kinguser/axd$7;->this$0:Lcom/kingroot/kinguser/axd;

    invoke-static {v0}, Lcom/kingroot/kinguser/axd;->j(Lcom/kingroot/kinguser/axd;)Lcom/kingroot/kinguser/bif;

    move-result-object v0

    if-nez v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/kingroot/kinguser/axd$7;->this$0:Lcom/kingroot/kinguser/axd;

    new-instance v1, Lcom/kingroot/kinguser/bif;

    iget-object v2, p0, Lcom/kingroot/kinguser/axd$7;->this$0:Lcom/kingroot/kinguser/axd;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/axd;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/kingroot/kinguser/bif;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/axd;->a(Lcom/kingroot/kinguser/axd;Lcom/kingroot/kinguser/bif;)Lcom/kingroot/kinguser/bif;

    .line 501
    iget-object v0, p0, Lcom/kingroot/kinguser/axd$7;->this$0:Lcom/kingroot/kinguser/axd;

    invoke-static {v0}, Lcom/kingroot/kinguser/axd;->j(Lcom/kingroot/kinguser/axd;)Lcom/kingroot/kinguser/bif;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bif;->show()V

    .line 502
    iget-object v0, p0, Lcom/kingroot/kinguser/axd$7;->this$0:Lcom/kingroot/kinguser/axd;

    invoke-static {v0}, Lcom/kingroot/kinguser/axd;->j(Lcom/kingroot/kinguser/axd;)Lcom/kingroot/kinguser/bif;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/axd$7;->this$0:Lcom/kingroot/kinguser/axd;

    const-wide/32 v2, 0x7f070462

    invoke-virtual {v1, v2, v3}, Lcom/kingroot/kinguser/axd;->V(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bif;->setTitleText(Ljava/lang/String;)V

    .line 503
    iget-object v0, p0, Lcom/kingroot/kinguser/axd$7;->this$0:Lcom/kingroot/kinguser/axd;

    invoke-static {v0}, Lcom/kingroot/kinguser/axd;->j(Lcom/kingroot/kinguser/axd;)Lcom/kingroot/kinguser/bif;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/kingroot/kinguser/bif;->iW(I)V

    .line 504
    iget-object v0, p0, Lcom/kingroot/kinguser/axd$7;->this$0:Lcom/kingroot/kinguser/axd;

    invoke-static {v0}, Lcom/kingroot/kinguser/axd;->j(Lcom/kingroot/kinguser/axd;)Lcom/kingroot/kinguser/bif;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/kingroot/kinguser/bif;->iZ(I)V

    .line 505
    iget-object v0, p0, Lcom/kingroot/kinguser/axd$7;->this$0:Lcom/kingroot/kinguser/axd;

    invoke-static {v0}, Lcom/kingroot/kinguser/axd;->j(Lcom/kingroot/kinguser/axd;)Lcom/kingroot/kinguser/bif;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/kingroot/kinguser/bif;->setCanceledOnTouchOutside(Z)V

    .line 506
    iget-object v0, p0, Lcom/kingroot/kinguser/axd$7;->this$0:Lcom/kingroot/kinguser/axd;

    invoke-static {v0}, Lcom/kingroot/kinguser/axd;->j(Lcom/kingroot/kinguser/axd;)Lcom/kingroot/kinguser/bif;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/kingroot/kinguser/bif;->setCancelable(Z)V

    .line 507
    iget-object v0, p0, Lcom/kingroot/kinguser/axd$7;->this$0:Lcom/kingroot/kinguser/axd;

    invoke-static {v0}, Lcom/kingroot/kinguser/axd;->j(Lcom/kingroot/kinguser/axd;)Lcom/kingroot/kinguser/bif;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/axd$7$1;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/axd$7$1;-><init>(Lcom/kingroot/kinguser/axd$7;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bif;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 517
    :goto_0
    return-void

    .line 515
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/axd$7;->this$0:Lcom/kingroot/kinguser/axd;

    invoke-static {v0}, Lcom/kingroot/kinguser/axd;->j(Lcom/kingroot/kinguser/axd;)Lcom/kingroot/kinguser/bif;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bif;->show()V

    goto :goto_0
.end method
