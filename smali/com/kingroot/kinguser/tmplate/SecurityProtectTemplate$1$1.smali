.class public Lcom/kingroot/kinguser/tmplate/SecurityProtectTemplate$1$1;
.super Lcom/kingroot/kinguser/ai/fore/IAntiInjectSwitcherOpObserver$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bex$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kingroot/kinguser/bex$1;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/bex$1;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/kingroot/kinguser/tmplate/SecurityProtectTemplate$1$1;->this$1:Lcom/kingroot/kinguser/bex$1;

    invoke-direct {p0}, Lcom/kingroot/kinguser/ai/fore/IAntiInjectSwitcherOpObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onSwitcherClosed()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/kingroot/kinguser/tmplate/SecurityProtectTemplate$1$1;->this$1:Lcom/kingroot/kinguser/bex$1;

    iget-object v0, v0, Lcom/kingroot/kinguser/bex$1;->blL:Lcom/kingroot/kinguser/bex;

    invoke-static {v0}, Lcom/kingroot/kinguser/bex;->a(Lcom/kingroot/kinguser/bex;)Lcom/kingroot/kinguser/bex$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/kingroot/kinguser/tmplate/SecurityProtectTemplate$1$1;->this$1:Lcom/kingroot/kinguser/bex$1;

    iget-object v0, v0, Lcom/kingroot/kinguser/bex$1;->blL:Lcom/kingroot/kinguser/bex;

    invoke-static {v0}, Lcom/kingroot/kinguser/bex;->a(Lcom/kingroot/kinguser/bex;)Lcom/kingroot/kinguser/bex$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/kingroot/kinguser/bex$a;->UE()V

    .line 63
    :cond_0
    return-void
.end method

.method public onSwitcherOpen(I)V
    .locals 0

    .prologue
    .line 55
    return-void
.end method
