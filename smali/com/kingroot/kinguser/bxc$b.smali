.class public Lcom/kingroot/kinguser/bxc$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/byf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bxc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field private bTa:Z

.field private bTb:Z

.field final synthetic bTc:Lcom/kingroot/kinguser/bxc;

.field private pressed:Z


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/bxc;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 78
    iput-object p1, p0, Lcom/kingroot/kinguser/bxc$b;->bTc:Lcom/kingroot/kinguser/bxc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-boolean v0, p0, Lcom/kingroot/kinguser/bxc$b;->bTa:Z

    .line 75
    iput-boolean v0, p0, Lcom/kingroot/kinguser/bxc$b;->bTb:Z

    .line 76
    iput-boolean v0, p0, Lcom/kingroot/kinguser/bxc$b;->pressed:Z

    .line 79
    return-void
.end method

.method private R(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bxc$b;->ajo()Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/kingroot/kinguser/bxc$b;->bTc:Lcom/kingroot/kinguser/bxc;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/kingroot/kinguser/bxc$b;->bTc:Lcom/kingroot/kinguser/bxc;

    invoke-static {v2}, Lcom/kingroot/kinguser/bxc;->a(Lcom/kingroot/kinguser/bxc;)I

    move-result v2

    invoke-static {v0, v1, p1, v2}, Lcom/kingroot/kinguser/bxc;->a(Lcom/kingroot/kinguser/bxc;ILandroid/view/View;I)V

    .line 136
    :goto_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bxc$b;->reset()V

    .line 137
    return-void

    .line 129
    :cond_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bxc$b;->ajp()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/kingroot/kinguser/bxc$b;->bTc:Lcom/kingroot/kinguser/bxc;

    invoke-static {v0}, Lcom/kingroot/kinguser/bxc;->b(Lcom/kingroot/kinguser/bxc;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bxc$b;->bTc:Lcom/kingroot/kinguser/bxc;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/kingroot/kinguser/bxc$b;->bTc:Lcom/kingroot/kinguser/bxc;

    invoke-static {v2}, Lcom/kingroot/kinguser/bxc;->a(Lcom/kingroot/kinguser/bxc;)I

    move-result v2

    invoke-static {v0, v1, p1, v2}, Lcom/kingroot/kinguser/bxc;->a(Lcom/kingroot/kinguser/bxc;ILandroid/view/View;I)V

    goto :goto_0

    .line 134
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/bxc$b;->bTc:Lcom/kingroot/kinguser/bxc;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/kingroot/kinguser/bxc$b;->bTc:Lcom/kingroot/kinguser/bxc;

    invoke-static {v2}, Lcom/kingroot/kinguser/bxc;->a(Lcom/kingroot/kinguser/bxc;)I

    move-result v2

    invoke-static {v0, v1, p1, v2}, Lcom/kingroot/kinguser/bxc;->a(Lcom/kingroot/kinguser/bxc;ILandroid/view/View;I)V

    goto :goto_0
.end method


# virtual methods
.method public ajo()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/kingroot/kinguser/bxc$b;->bTb:Z

    return v0
.end method

.method public ajp()Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/kingroot/kinguser/bxc$b;->bTa:Z

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 96
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v0

    if-gtz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/kingroot/kinguser/bxc$b;->bTa:Z

    .line 98
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 122
    :goto_1
    :pswitch_0
    return v2

    :cond_0
    move v0, v2

    .line 96
    goto :goto_0

    .line 101
    :pswitch_1
    iput-boolean v1, p0, Lcom/kingroot/kinguser/bxc$b;->pressed:Z

    goto :goto_1

    .line 107
    :pswitch_2
    iget-object v0, p0, Lcom/kingroot/kinguser/bxc$b;->bTc:Lcom/kingroot/kinguser/bxc;

    invoke-static {v0, p2}, Lcom/kingroot/kinguser/bxc;->a(Lcom/kingroot/kinguser/bxc;Landroid/view/MotionEvent;)V

    .line 109
    iget-boolean v0, p0, Lcom/kingroot/kinguser/bxc$b;->pressed:Z

    if-eqz v0, :cond_1

    .line 110
    iput-boolean v2, p0, Lcom/kingroot/kinguser/bxc$b;->pressed:Z

    .line 111
    iput-boolean v1, p0, Lcom/kingroot/kinguser/bxc$b;->bTb:Z

    .line 114
    :cond_1
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bxc$b;->R(Landroid/view/View;)V

    goto :goto_1

    .line 98
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/bxc$b;->bTb:Z

    .line 91
    return-void
.end method
