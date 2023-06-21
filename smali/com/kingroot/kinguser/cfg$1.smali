.class Lcom/kingroot/kinguser/cfg$1;
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
    .line 56
    iput-object p1, p0, Lcom/kingroot/kinguser/cfg$1;->cbm:Lcom/kingroot/kinguser/cfg;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .prologue
    .line 59
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 61
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, [Ljava/lang/Object;

    .line 62
    const/4 v0, 0x0

    aget-object v0, v4, v0

    move-object v5, v0

    check-cast v5, Lcom/kingroot/kinguser/cfg$a;

    .line 63
    iget-object v0, v5, Lcom/kingroot/kinguser/cfg$a;->cbA:Lcom/kingroot/kinguser/cci;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, v5, Lcom/kingroot/kinguser/cfg$a;->cbA:Lcom/kingroot/kinguser/cci;

    const/4 v1, 0x1

    aget-object v1, v4, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, v5, Lcom/kingroot/kinguser/cfg$a;->mCmdId:I

    const/4 v3, 0x2

    aget-object v3, v4, v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v6, 0x3

    aget-object v4, v4, v6

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, v5, Lcom/kingroot/kinguser/cfg$a;->cbz:Lcom/qq/taf/jce/JceStruct;

    invoke-interface/range {v0 .. v5}, Lcom/kingroot/kinguser/cci;->a(IIIILcom/qq/taf/jce/JceStruct;)V

    goto :goto_0

    .line 59
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method
