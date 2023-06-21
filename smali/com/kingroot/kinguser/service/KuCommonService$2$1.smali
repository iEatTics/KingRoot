.class Lcom/kingroot/kinguser/service/KuCommonService$2$1;
.super Lcom/kingroot/kinguser/ai/fore/IAntiInjectSwitcherOpObserver$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/service/KuCommonService$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kingroot/kinguser/service/KuCommonService$2;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/service/KuCommonService$2;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/kingroot/kinguser/service/KuCommonService$2$1;->this$1:Lcom/kingroot/kinguser/service/KuCommonService$2;

    invoke-direct {p0}, Lcom/kingroot/kinguser/ai/fore/IAntiInjectSwitcherOpObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onSwitcherClosed()V
    .locals 0

    .prologue
    .line 184
    return-void
.end method

.method public onSwitcherOpen(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 171
    if-nez p1, :cond_0

    .line 173
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aks;->eu(I)V

    .line 174
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aks;->et(I)V

    .line 180
    :goto_0
    return-void

    .line 178
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aks;->et(I)V

    goto :goto_0
.end method
