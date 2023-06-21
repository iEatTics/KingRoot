.class Lcom/kingroot/kinguser/root/mgr/SuNotifyService$2;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/root/mgr/SuNotifyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bfR:Lcom/kingroot/kinguser/root/mgr/SuNotifyService;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/root/mgr/SuNotifyService;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/kingroot/kinguser/root/mgr/SuNotifyService$2;->bfR:Lcom/kingroot/kinguser/root/mgr/SuNotifyService;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 77
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 79
    invoke-static {}, Lcom/kingroot/kinguser/ajn;->zp()Lcom/kingroot/kinguser/ajn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ajn;->zq()V

    .line 82
    invoke-static {}, Lcom/kingroot/kinguser/baw;->VY()V

    .line 85
    invoke-static {}, Lcom/kingroot/kinguser/bdx;->jS()V

    .line 88
    invoke-static {}, Lcom/kingroot/kinguser/aiv;->yw()Lcom/kingroot/kinguser/aiv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aiv;->yz()Z

    .line 89
    return-void
.end method
