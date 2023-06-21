.class Lcom/kingroot/kinguser/root/mgr/RootManagerService$5;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/root/mgr/RootManagerService;->triggerSuRequestPrompt()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bfG:Lcom/kingroot/kinguser/root/mgr/RootManagerService;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/root/mgr/RootManagerService;)V
    .locals 0

    .prologue
    .line 795
    iput-object p1, p0, Lcom/kingroot/kinguser/root/mgr/RootManagerService$5;->bfG:Lcom/kingroot/kinguser/root/mgr/RootManagerService;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 798
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 799
    invoke-static {}, Lcom/kingroot/kinguser/bbf;->Wl()Lcom/kingroot/kinguser/bbf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bbf;->Wm()V

    .line 800
    return-void
.end method
