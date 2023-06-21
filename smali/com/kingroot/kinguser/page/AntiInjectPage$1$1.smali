.class public Lcom/kingroot/kinguser/page/AntiInjectPage$1$1;
.super Lcom/kingroot/kinguser/ai/fore/IAntiInjectSwitcherOpObserver$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axa$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kingroot/kinguser/axa$1;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/axa$1;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/kingroot/kinguser/page/AntiInjectPage$1$1;->this$1:Lcom/kingroot/kinguser/axa$1;

    invoke-direct {p0}, Lcom/kingroot/kinguser/ai/fore/IAntiInjectSwitcherOpObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onSwitcherClosed()V
    .locals 0

    .prologue
    .line 198
    return-void
.end method

.method public onSwitcherOpen(I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 156
    invoke-static {}, Lcom/kingroot/kinguser/ahl;->xk()Z

    .line 159
    if-nez p1, :cond_2

    .line 160
    iget-object v0, p0, Lcom/kingroot/kinguser/page/AntiInjectPage$1$1;->this$1:Lcom/kingroot/kinguser/axa$1;

    iget-object v0, v0, Lcom/kingroot/kinguser/axa$1;->aXc:Lcom/kingroot/kinguser/axa;

    invoke-static {v0, v3}, Lcom/kingroot/kinguser/axa;->a(Lcom/kingroot/kinguser/axa;Z)Z

    .line 161
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18776

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 162
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/aks;->bL(Z)V

    .line 163
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/aks;->eu(I)V

    .line 164
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->EZ()V

    .line 166
    invoke-static {}, Lcom/kingroot/kinguser/ahl;->xm()Lcom/kingroot/kinguser/ahl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ahl;->getRebootStat()Lcom/kingroot/kinguser/util/protect/RebootStat;

    move-result-object v0

    .line 167
    if-eqz v0, :cond_0

    .line 168
    iget v0, v0, Lcom/kingroot/kinguser/util/protect/RebootStat;->failPeekCount:I

    .line 173
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->Cg()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/aks;->bh(Z)V

    .line 175
    iget-object v0, p0, Lcom/kingroot/kinguser/page/AntiInjectPage$1$1;->this$1:Lcom/kingroot/kinguser/axa$1;

    iget-object v0, v0, Lcom/kingroot/kinguser/axa$1;->aXc:Lcom/kingroot/kinguser/axa;

    invoke-static {v0}, Lcom/kingroot/kinguser/axa;->a(Lcom/kingroot/kinguser/axa;)V

    .line 193
    :cond_1
    :goto_0
    return-void

    .line 179
    :cond_2
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18777

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 180
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/aks;->bL(Z)V

    .line 182
    iget-object v0, p0, Lcom/kingroot/kinguser/page/AntiInjectPage$1$1;->this$1:Lcom/kingroot/kinguser/axa$1;

    iget-object v0, v0, Lcom/kingroot/kinguser/axa$1;->aXc:Lcom/kingroot/kinguser/axa;

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/axa;->a(Lcom/kingroot/kinguser/axa;Z)Z

    .line 184
    iget-object v0, p0, Lcom/kingroot/kinguser/page/AntiInjectPage$1$1;->this$1:Lcom/kingroot/kinguser/axa$1;

    iget-object v0, v0, Lcom/kingroot/kinguser/axa$1;->aXc:Lcom/kingroot/kinguser/axa;

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/axa;->a(Lcom/kingroot/kinguser/axa;I)I

    .line 185
    iget-object v0, p0, Lcom/kingroot/kinguser/page/AntiInjectPage$1$1;->this$1:Lcom/kingroot/kinguser/axa$1;

    iget-object v0, v0, Lcom/kingroot/kinguser/axa$1;->aXc:Lcom/kingroot/kinguser/axa;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/axa;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 186
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 187
    iput v2, v0, Landroid/os/Message;->what:I

    .line 188
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 189
    const-string v2, "from"

    const/4 v3, 0x7

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 190
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 191
    iget-object v1, p0, Lcom/kingroot/kinguser/page/AntiInjectPage$1$1;->this$1:Lcom/kingroot/kinguser/axa$1;

    iget-object v1, v1, Lcom/kingroot/kinguser/axa$1;->aXc:Lcom/kingroot/kinguser/axa;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/axa;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method
