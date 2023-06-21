.class Lcom/kingroot/kinguser/abr$2;
.super Lcom/kingroot/kinguser/wo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/abr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ZJ:Lcom/kingroot/kinguser/abr;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/abr;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/kingroot/kinguser/abr$2;->ZJ:Lcom/kingroot/kinguser/abr;

    invoke-direct {p0}, Lcom/kingroot/kinguser/wo;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 37
    invoke-super {p0}, Lcom/kingroot/kinguser/wo;->run()V

    .line 39
    iget-object v0, p0, Lcom/kingroot/kinguser/abr$2;->ZJ:Lcom/kingroot/kinguser/abr;

    invoke-static {v0}, Lcom/kingroot/kinguser/abr;->a(Lcom/kingroot/kinguser/abr;)V

    .line 41
    invoke-static {}, Lcom/kingroot/kinguser/abq;->qY()Lcom/kingroot/kinguser/abq;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/abq;->setEnable(Z)V

    .line 42
    invoke-static {}, Lcom/kingroot/kinguser/abq;->qY()Lcom/kingroot/kinguser/abq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/abq;->qZ()V

    .line 44
    invoke-static {}, Lcom/kingroot/kinguser/abp;->qW()Lcom/kingroot/kinguser/abp;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/abp;->setEnable(Z)V

    .line 45
    invoke-static {v1}, Lcom/kingroot/common/utils/system/monitor/top/TopAppMonitorAccessibilityService;->ah(Z)V

    .line 46
    return-void
.end method
