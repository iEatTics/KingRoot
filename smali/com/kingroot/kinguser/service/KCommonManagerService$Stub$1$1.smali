.class Lcom/kingroot/kinguser/service/KCommonManagerService$Stub$1$1;
.super Lcom/kingroot/kinguser/ai/fore/IAntiInjectSwitcherOpObserver$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/service/KCommonManagerService$Stub$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kingroot/kinguser/service/KCommonManagerService$Stub$1;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/service/KCommonManagerService$Stub$1;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/kingroot/kinguser/service/KCommonManagerService$Stub$1$1;->this$1:Lcom/kingroot/kinguser/service/KCommonManagerService$Stub$1;

    invoke-direct {p0}, Lcom/kingroot/kinguser/ai/fore/IAntiInjectSwitcherOpObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onSwitcherClosed()V
    .locals 0

    .prologue
    .line 126
    return-void
.end method

.method public onSwitcherOpen(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 113
    if-nez p1, :cond_0

    .line 115
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aks;->eu(I)V

    .line 116
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aks;->et(I)V

    .line 122
    :goto_0
    return-void

    .line 120
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aks;->et(I)V

    goto :goto_0
.end method
