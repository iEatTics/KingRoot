.class Lcom/kingroot/kinguser/activitys/SuRequestActivity$1;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/activitys/SuRequestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ajd:Lcom/kingroot/kinguser/activitys/SuRequestActivity;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/activitys/SuRequestActivity;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/kingroot/kinguser/activitys/SuRequestActivity$1;->ajd:Lcom/kingroot/kinguser/activitys/SuRequestActivity;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 40
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 41
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/SuRequestActivity$1;->ajd:Lcom/kingroot/kinguser/activitys/SuRequestActivity;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/activitys/SuRequestActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 44
    if-eqz v0, :cond_0

    .line 46
    const-string v1, "REQ_MODEL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;

    .line 47
    if-nez v0, :cond_1

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/bbt;->WG()Lcom/kingroot/kinguser/bbt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/bbt;->jX()Landroid/os/IInterface;

    move-result-object v1

    if-nez v1, :cond_2

    .line 53
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/SuRequestActivity$1;->ajd:Lcom/kingroot/kinguser/activitys/SuRequestActivity;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/activitys/SuRequestActivity;->vA()V

    goto :goto_0

    .line 60
    :cond_2
    invoke-static {}, Lcom/kingroot/kinguser/aav;->ql()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/kingroot/kinguser/aav;->qj()Z

    move-result v1

    if-nez v1, :cond_3

    .line 61
    invoke-static {}, Lcom/kingroot/kinguser/aav;->qk()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 62
    :cond_3
    iget-object v1, p0, Lcom/kingroot/kinguser/activitys/SuRequestActivity$1;->ajd:Lcom/kingroot/kinguser/activitys/SuRequestActivity;

    invoke-static {v1, v0}, Lcom/kingroot/kinguser/activitys/SuRequestActivity;->a(Lcom/kingroot/kinguser/activitys/SuRequestActivity;Lcom/kingroot/kinguser/model/SuRequestCmdModel;)V

    .line 64
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/SuRequestActivity$1;->ajd:Lcom/kingroot/kinguser/activitys/SuRequestActivity;

    invoke-static {v0}, Lcom/kingroot/kinguser/activitys/SuRequestActivity;->a(Lcom/kingroot/kinguser/activitys/SuRequestActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/SuRequestActivity$1;->ajd:Lcom/kingroot/kinguser/activitys/SuRequestActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/activitys/SuRequestActivity;->a(Lcom/kingroot/kinguser/activitys/SuRequestActivity;Z)Z

    .line 66
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/SuRequestActivity$1;->ajd:Lcom/kingroot/kinguser/activitys/SuRequestActivity;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/activitys/SuRequestActivity;->finish()V

    goto :goto_0

    .line 69
    :cond_4
    new-instance v1, Lcom/kingroot/kinguser/activitys/SuRequestActivity$1$1;

    invoke-direct {v1, p0, v0}, Lcom/kingroot/kinguser/activitys/SuRequestActivity$1$1;-><init>(Lcom/kingroot/kinguser/activitys/SuRequestActivity$1;Lcom/kingroot/kinguser/model/SuRequestCmdModel;)V

    invoke-static {v1}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
