.class public Lcom/kingroot/common/uilib/template/AbsActivity$SelfKillReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/common/uilib/template/AbsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SelfKillReceiver"
.end annotation


# instance fields
.field final synthetic Vb:Lcom/kingroot/common/uilib/template/AbsActivity;


# direct methods
.method protected constructor <init>(Lcom/kingroot/common/uilib/template/AbsActivity;)V
    .locals 0

    .prologue
    .line 459
    iput-object p1, p0, Lcom/kingroot/common/uilib/template/AbsActivity$SelfKillReceiver;->Vb:Lcom/kingroot/common/uilib/template/AbsActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 463
    const-string v0, "action_self_kill"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/kingroot/common/uilib/template/AbsActivity$SelfKillReceiver;->Vb:Lcom/kingroot/common/uilib/template/AbsActivity;

    invoke-virtual {v0}, Lcom/kingroot/common/uilib/template/AbsActivity;->finish()V

    .line 466
    :cond_0
    return-void
.end method
