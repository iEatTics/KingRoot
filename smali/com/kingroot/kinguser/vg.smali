.class public Lcom/kingroot/kinguser/vg;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/vg$b;,
        Lcom/kingroot/kinguser/vg$a;
    }
.end annotation


# instance fields
.field private Kw:Ljava/lang/String;

.field private Kx:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/kingroot/kinguser/vg$b;",
            ">;"
        }
    .end annotation
.end field

.field private Ky:Lcom/kingroot/kinguser/vh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/vh",
            "<",
            "Lcom/kingroot/kinguser/vf;",
            ">;"
        }
    .end annotation
.end field

.field private Kz:Lcom/kingroot/kinguser/vg$a;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Lcom/kingroot/kinguser/vg$a;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 26
    iput-object p2, p0, Lcom/kingroot/kinguser/vg;->mContext:Landroid/content/Context;

    .line 27
    iput-object p3, p0, Lcom/kingroot/kinguser/vg;->Kw:Ljava/lang/String;

    .line 28
    iput-object p4, p0, Lcom/kingroot/kinguser/vg;->Kz:Lcom/kingroot/kinguser/vg$a;

    .line 29
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/vg;Lcom/kingroot/kinguser/vh;)Lcom/kingroot/kinguser/vh;
    .locals 0

    .prologue
    .line 11
    iput-object p1, p0, Lcom/kingroot/kinguser/vg;->Ky:Lcom/kingroot/kinguser/vh;

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 6

    .prologue
    .line 102
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 103
    :cond_0
    const/4 v0, 0x0

    .line 121
    :goto_0
    return v0

    .line 106
    :cond_1
    new-instance v0, Lcom/kingroot/kinguser/vf;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/kingroot/kinguser/vf;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 107
    new-instance v1, Lcom/kingroot/kinguser/vh;

    iget-object v2, p0, Lcom/kingroot/kinguser/vg;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/kingroot/kinguser/vh;-><init>(Landroid/content/Context;Lcom/kingroot/kinguser/vj;)V

    iput-object v1, p0, Lcom/kingroot/kinguser/vg;->Ky:Lcom/kingroot/kinguser/vh;

    .line 108
    iget-object v0, p0, Lcom/kingroot/kinguser/vg;->Ky:Lcom/kingroot/kinguser/vh;

    iget-object v1, p0, Lcom/kingroot/kinguser/vg;->Kw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/vh;->dc(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/kingroot/kinguser/vg;->Ky:Lcom/kingroot/kinguser/vh;

    new-instance v1, Lcom/kingroot/kinguser/vg$1;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/vg$1;-><init>(Lcom/kingroot/kinguser/vg;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/vh;->a(Lcom/kingroot/kinguser/vk;)V

    .line 120
    iget-object v0, p0, Lcom/kingroot/kinguser/vg;->Ky:Lcom/kingroot/kinguser/vh;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/vh;->ll()V

    .line 121
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private lj()V
    .locals 6

    .prologue
    .line 85
    iget-object v0, p0, Lcom/kingroot/kinguser/vg;->Kx:Ljava/util/concurrent/LinkedBlockingQueue;

    if-nez v0, :cond_1

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/vg;->Ky:Lcom/kingroot/kinguser/vh;

    if-nez v0, :cond_0

    .line 94
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/vg;->Kx:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/vg$b;

    if-eqz v0, :cond_0

    .line 95
    invoke-interface {v0}, Lcom/kingroot/kinguser/vg$b;->getLocalName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lcom/kingroot/kinguser/vg$b;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lcom/kingroot/kinguser/vg$b;->lk()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lcom/kingroot/kinguser/vg$b;->getSize()J

    move-result-wide v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/kingroot/kinguser/vg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 54
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 82
    :goto_0
    return-void

    .line 56
    :pswitch_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/vg;->lj()V

    goto :goto_0

    .line 60
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/kingroot/kinguser/vf;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/kingroot/kinguser/vg;->Kz:Lcom/kingroot/kinguser/vg$a;

    if-eqz v0, :cond_0

    .line 62
    iget-object v1, p0, Lcom/kingroot/kinguser/vg;->Kz:Lcom/kingroot/kinguser/vg$a;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/kingroot/kinguser/vf;

    invoke-interface {v1, v0}, Lcom/kingroot/kinguser/vg$a;->c(Lcom/kingroot/kinguser/vf;)V

    .line 65
    :cond_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/vg;->lj()V

    goto :goto_0

    .line 70
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/kingroot/kinguser/vf;

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/kingroot/kinguser/vg;->Kz:Lcom/kingroot/kinguser/vg$a;

    if-eqz v0, :cond_1

    .line 72
    iget-object v1, p0, Lcom/kingroot/kinguser/vg;->Kz:Lcom/kingroot/kinguser/vg$a;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/kingroot/kinguser/vf;

    invoke-interface {v1, v0}, Lcom/kingroot/kinguser/vg$a;->d(Lcom/kingroot/kinguser/vf;)V

    .line 75
    :cond_1
    invoke-direct {p0}, Lcom/kingroot/kinguser/vg;->lj()V

    goto :goto_0

    .line 54
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public y(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/vg$b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 42
    iget-object v0, p0, Lcom/kingroot/kinguser/vg;->Kx:Ljava/util/concurrent/LinkedBlockingQueue;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/vg;->Kx:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 45
    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 46
    iget-object v1, p0, Lcom/kingroot/kinguser/vg;->Kx:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/vg;->sendEmptyMessage(I)Z

    .line 50
    return-void
.end method
