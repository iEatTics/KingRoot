.class public Lcom/kingroot/kinguser/att;
.super Lcom/kingroot/kinguser/th;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/kingroot/kinguser/th;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 27
    .line 28
    new-instance v0, Lcom/kingroot/kinguser/att$1;

    invoke-direct {v0, p0, p2}, Lcom/kingroot/kinguser/att$1;-><init>(Lcom/kingroot/kinguser/att;Landroid/content/Intent;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/zk;->a(Lcom/kingroot/kinguser/zk$a;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    return-void
.end method
