.class Lcom/kingroot/kinguser/cfg$3;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/cfg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cbm:Lcom/kingroot/kinguser/cfg;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/cfg;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/kingroot/kinguser/cfg$3;->cbm:Lcom/kingroot/kinguser/cfg;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 109
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 110
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 113
    :goto_0
    return-void

    .line 112
    :pswitch_0
    iget-object v1, p0, Lcom/kingroot/kinguser/cfg$3;->cbm:Lcom/kingroot/kinguser/cfg;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/kingroot/kinguser/cfg$a;

    invoke-static {v1, v0}, Lcom/kingroot/kinguser/cfg;->a(Lcom/kingroot/kinguser/cfg;Lcom/kingroot/kinguser/cfg$a;)V

    goto :goto_0

    .line 110
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
