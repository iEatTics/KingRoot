.class public Lcom/kingroot/kinguser/net/clcmd/KuCloudCmdExecter$2$1;
.super Lcom/kingroot/kinguser/ai/fore/IAntiInjectSwitcherOpObserver$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/avg$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kingroot/kinguser/avg$2;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/avg$2;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/kingroot/kinguser/net/clcmd/KuCloudCmdExecter$2$1;->this$1:Lcom/kingroot/kinguser/avg$2;

    invoke-direct {p0}, Lcom/kingroot/kinguser/ai/fore/IAntiInjectSwitcherOpObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onSwitcherClosed()V
    .locals 2

    .prologue
    .line 161
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aks;->et(I)V

    .line 163
    return-void
.end method

.method public onSwitcherOpen(I)V
    .locals 0

    .prologue
    .line 157
    return-void
.end method
