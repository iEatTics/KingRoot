.class Lcom/kingroot/kinguser/adu$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/adu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic adC:Lcom/kingroot/kinguser/adu;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/adu;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/kingroot/kinguser/adu$1;->adC:Lcom/kingroot/kinguser/adu;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 55
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 126
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 57
    :pswitch_1
    iget-object v0, p0, Lcom/kingroot/kinguser/adu$1;->adC:Lcom/kingroot/kinguser/adu;

    invoke-static {v0}, Lcom/kingroot/kinguser/adu;->a(Lcom/kingroot/kinguser/adu;)V

    goto :goto_0

    .line 60
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/kingroot/kinguser/adq;

    .line 61
    invoke-virtual {v0}, Lcom/kingroot/kinguser/adq;->onStart()V

    goto :goto_0

    .line 64
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Lcom/kingroot/kinguser/adq;

    check-cast v0, [Lcom/kingroot/kinguser/adq;

    .line 66
    if-eqz v0, :cond_0

    .line 67
    array-length v2, v0

    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 68
    invoke-virtual {v3}, Lcom/kingroot/kinguser/adq;->sT()V

    .line 67
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 73
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Lcom/kingroot/kinguser/adq;

    check-cast v0, [Lcom/kingroot/kinguser/adq;

    .line 75
    if-eqz v0, :cond_0

    .line 76
    array-length v2, v0

    :goto_2
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 77
    invoke-virtual {v3}, Lcom/kingroot/kinguser/adq;->sU()V

    .line 76
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 82
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/kingroot/kinguser/adq;

    .line 83
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 84
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 85
    if-eqz v0, :cond_1

    .line 86
    invoke-virtual {v0}, Lcom/kingroot/kinguser/adq;->sV()V

    .line 89
    :cond_1
    iget-object v3, p0, Lcom/kingroot/kinguser/adu$1;->adC:Lcom/kingroot/kinguser/adu;

    invoke-static {v3, v0, v1, v2}, Lcom/kingroot/kinguser/adu;->a(Lcom/kingroot/kinguser/adu;Ljava/lang/Object;II)V

    goto :goto_0

    .line 92
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/kingroot/kinguser/adq;

    .line 93
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 94
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 95
    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {v0}, Lcom/kingroot/kinguser/adq;->sT()V

    goto :goto_0

    .line 102
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/kingroot/kinguser/adq;

    .line 103
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 104
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 105
    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v0}, Lcom/kingroot/kinguser/adq;->sU()V

    goto :goto_0

    .line 112
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/kingroot/kinguser/adq;

    .line 113
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 114
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 115
    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {v0}, Lcom/kingroot/kinguser/adq;->sU()V

    goto :goto_0

    .line 120
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/kingroot/kinguser/adq;

    .line 121
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 122
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 123
    iget-object v3, p0, Lcom/kingroot/kinguser/adu$1;->adC:Lcom/kingroot/kinguser/adu;

    invoke-static {v3, v0, v1, v2}, Lcom/kingroot/kinguser/adu;->a(Lcom/kingroot/kinguser/adu;Ljava/lang/Object;II)V

    goto :goto_0

    .line 55
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_8
        :pswitch_9
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
