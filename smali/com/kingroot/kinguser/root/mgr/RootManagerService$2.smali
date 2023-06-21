.class Lcom/kingroot/kinguser/root/mgr/RootManagerService$2;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/root/mgr/RootManagerService;
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
    .line 138
    iput-object p1, p0, Lcom/kingroot/kinguser/root/mgr/RootManagerService$2;->bfG:Lcom/kingroot/kinguser/root/mgr/RootManagerService;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 141
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 142
    iget-object v0, p0, Lcom/kingroot/kinguser/root/mgr/RootManagerService$2;->bfG:Lcom/kingroot/kinguser/root/mgr/RootManagerService;

    invoke-static {v0}, Lcom/kingroot/kinguser/root/mgr/RootManagerService;->access$100(Lcom/kingroot/kinguser/root/mgr/RootManagerService;)V

    .line 143
    return-void
.end method
