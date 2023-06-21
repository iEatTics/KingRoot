.class Lcom/kingroot/kinguser/cfh$d$2;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/cfh$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ccs:Lcom/kingroot/kinguser/cfh$d;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/cfh$d;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 777
    iput-object p1, p0, Lcom/kingroot/kinguser/cfh$d$2;->ccs:Lcom/kingroot/kinguser/cfh$d;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 780
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 791
    :goto_0
    return-void

    .line 782
    :pswitch_0
    new-instance v0, Lcom/kingroot/kinguser/bg;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bg;-><init>()V

    .line 783
    const v1, -0x989691

    iput v1, v0, Lcom/kingroot/kinguser/bg;->retCode:I

    .line 784
    iget v1, p1, Landroid/os/Message;->arg1:I

    iput v1, v0, Lcom/kingroot/kinguser/bg;->jX:I

    .line 785
    iget v1, p1, Landroid/os/Message;->arg2:I

    iput v1, v0, Lcom/kingroot/kinguser/bg;->cmd:I

    .line 787
    iget-object v1, p0, Lcom/kingroot/kinguser/cfh$d$2;->ccs:Lcom/kingroot/kinguser/cfh$d;

    invoke-static {v1, v0}, Lcom/kingroot/kinguser/cfh$d;->a(Lcom/kingroot/kinguser/cfh$d;Lcom/kingroot/kinguser/bg;)V

    goto :goto_0

    .line 780
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
