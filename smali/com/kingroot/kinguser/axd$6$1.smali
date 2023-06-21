.class Lcom/kingroot/kinguser/axd$6$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axd$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aXK:Lcom/kingroot/kinguser/axd$6;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axd$6;)V
    .locals 0

    .prologue
    .line 448
    iput-object p1, p0, Lcom/kingroot/kinguser/axd$6$1;->aXK:Lcom/kingroot/kinguser/axd$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 452
    iget-object v0, p0, Lcom/kingroot/kinguser/axd$6$1;->aXK:Lcom/kingroot/kinguser/axd$6;

    iget-object v0, v0, Lcom/kingroot/kinguser/axd$6;->this$0:Lcom/kingroot/kinguser/axd;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/axd;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 453
    iget-object v0, p0, Lcom/kingroot/kinguser/axd$6$1;->aXK:Lcom/kingroot/kinguser/axd$6;

    iget-object v0, v0, Lcom/kingroot/kinguser/axd$6;->this$0:Lcom/kingroot/kinguser/axd;

    invoke-static {v0}, Lcom/kingroot/kinguser/axd;->f(Lcom/kingroot/kinguser/axd;)V

    .line 454
    iget-object v0, p0, Lcom/kingroot/kinguser/axd$6$1;->aXK:Lcom/kingroot/kinguser/axd$6;

    iget-object v0, v0, Lcom/kingroot/kinguser/axd$6;->this$0:Lcom/kingroot/kinguser/axd;

    invoke-static {v0}, Lcom/kingroot/kinguser/axd;->g(Lcom/kingroot/kinguser/axd;)Lcom/kingroot/kinguser/agd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/agd;->notifyDataSetChanged()V

    .line 455
    iget-object v0, p0, Lcom/kingroot/kinguser/axd$6$1;->aXK:Lcom/kingroot/kinguser/axd$6;

    iget-object v0, v0, Lcom/kingroot/kinguser/axd$6;->this$0:Lcom/kingroot/kinguser/axd;

    invoke-static {v0}, Lcom/kingroot/kinguser/axd;->h(Lcom/kingroot/kinguser/axd;)V

    .line 458
    iget-object v0, p0, Lcom/kingroot/kinguser/axd$6$1;->aXK:Lcom/kingroot/kinguser/axd$6;

    iget-object v0, v0, Lcom/kingroot/kinguser/axd$6;->this$0:Lcom/kingroot/kinguser/axd;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/axd;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/axd$6$1;->aXK:Lcom/kingroot/kinguser/axd$6;

    iget-object v1, v1, Lcom/kingroot/kinguser/axd$6;->this$0:Lcom/kingroot/kinguser/axd;

    const-wide/32 v2, 0x7f07046f

    invoke-virtual {v1, v2, v3}, Lcom/kingroot/kinguser/axd;->V(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 459
    return-void
.end method
