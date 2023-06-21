.class Lcom/kingroot/kinguser/cfh$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/cfh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cbV:Lcom/kingroot/kinguser/cfh;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/cfh;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/kingroot/kinguser/cfh$1;->cbV:Lcom/kingroot/kinguser/cfh;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 142
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 144
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, [Ljava/lang/Object;

    .line 145
    const/4 v0, 0x0

    aget-object v0, v6, v0

    move-object v7, v0

    check-cast v7, Lcom/kingroot/kinguser/cfh$c;

    .line 146
    iget v0, v7, Lcom/kingroot/kinguser/cfh$c;->cbu:I

    if-lez v0, :cond_1

    .line 147
    iget-object v0, v7, Lcom/kingroot/kinguser/cfh$c;->ccj:Lcom/kingroot/kinguser/ccj;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, v7, Lcom/kingroot/kinguser/cfh$c;->ccj:Lcom/kingroot/kinguser/ccj;

    iget v1, v7, Lcom/kingroot/kinguser/cfh$c;->bux:I

    iget v2, v7, Lcom/kingroot/kinguser/cfh$c;->cbu:I

    iget v3, v7, Lcom/kingroot/kinguser/cfh$c;->bZA:I

    aget-object v4, v6, v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v5, v6, v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v6, v6, v8

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, v7, Lcom/kingroot/kinguser/cfh$c;->cci:[B

    invoke-interface/range {v0 .. v7}, Lcom/kingroot/kinguser/ccj;->a(IIIIII[B)V

    goto :goto_0

    .line 151
    :cond_1
    iget-object v0, v7, Lcom/kingroot/kinguser/cfh$c;->cbA:Lcom/kingroot/kinguser/cci;

    iget v1, v7, Lcom/kingroot/kinguser/cfh$c;->bZA:I

    aget-object v2, v6, v4

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v3, v6, v5

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v4, v6, v8

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, v7, Lcom/kingroot/kinguser/cfh$c;->cbz:Lcom/qq/taf/jce/JceStruct;

    invoke-interface/range {v0 .. v5}, Lcom/kingroot/kinguser/cci;->a(IIIILcom/qq/taf/jce/JceStruct;)V

    goto :goto_0

    .line 142
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method
