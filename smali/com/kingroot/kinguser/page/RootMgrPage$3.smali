.class public Lcom/kingroot/kinguser/page/RootMgrPage$3;
.super Lcom/kingroot/kinguser/root/mgr/IAppRulesChangeListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/axo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/axo;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/axo;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/kingroot/kinguser/page/RootMgrPage$3;->this$0:Lcom/kingroot/kinguser/axo;

    invoke-direct {p0}, Lcom/kingroot/kinguser/root/mgr/IAppRulesChangeListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppRulesChangeListener()V
    .locals 4

    .prologue
    .line 193
    invoke-static {}, Lcom/kingroot/kinguser/bbt;->WG()Lcom/kingroot/kinguser/bbt;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/page/RootMgrPage$3;->this$0:Lcom/kingroot/kinguser/axo;

    invoke-static {v1}, Lcom/kingroot/kinguser/axo;->c(Lcom/kingroot/kinguser/axo;)Lcom/kingroot/kinguser/root/mgr/IAppRulesChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bbt;->removeAppRulesChangeListener(Lcom/kingroot/kinguser/root/mgr/IAppRulesChangeListener;)V

    .line 194
    iget-object v0, p0, Lcom/kingroot/kinguser/page/RootMgrPage$3;->this$0:Lcom/kingroot/kinguser/axo;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/axo;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 195
    return-void
.end method
