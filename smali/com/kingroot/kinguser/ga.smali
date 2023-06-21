.class Lcom/kingroot/kinguser/ga;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic qi:Lcom/kingroot/kinguser/fz;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/fz;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/kingroot/kinguser/ga;->qi:Lcom/kingroot/kinguser/fz;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/kingroot/kinguser/ga;->qi:Lcom/kingroot/kinguser/fz;

    invoke-static {v0, p1}, Lcom/kingroot/kinguser/fz;->a(Lcom/kingroot/kinguser/fz;Landroid/os/Message;)V

    .line 72
    return-void
.end method
