.class public Lcom/kingroot/kinguser/kg;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/kg$b;,
        Lcom/kingroot/kinguser/kg$a;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private tJ:Ljava/lang/String;

.field private tK:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/kingroot/kinguser/kg$b;",
            ">;"
        }
    .end annotation
.end field

.field private tL:Lcom/kingroot/kinguser/ki;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/ki",
            "<",
            "Lcom/kingroot/kinguser/kf;",
            ">;"
        }
    .end annotation
.end field

.field private tM:Lcom/kingroot/kinguser/kg$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/kingroot/kinguser/kg$a;)V
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 25
    iput-object p1, p0, Lcom/kingroot/kinguser/kg;->mContext:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/kingroot/kinguser/kg;->tJ:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/kingroot/kinguser/kg;->tM:Lcom/kingroot/kinguser/kg$a;

    .line 28
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/kg;Lcom/kingroot/kinguser/ki;)Lcom/kingroot/kinguser/ki;
    .locals 0

    .prologue
    .line 10
    iput-object p1, p0, Lcom/kingroot/kinguser/kg;->tL:Lcom/kingroot/kinguser/ki;

    return-object p1
.end method

.method private cU()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/kingroot/kinguser/kg;->tK:Ljava/util/concurrent/LinkedBlockingQueue;

    if-nez v0, :cond_1

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/kg;->tL:Lcom/kingroot/kinguser/ki;

    if-nez v0, :cond_0

    .line 89
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/kg;->tK:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/kg$b;

    if-eqz v0, :cond_0

    .line 90
    invoke-interface {v0}, Lcom/kingroot/kinguser/kg$b;->getLocalName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lcom/kingroot/kinguser/kg$b;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/kingroot/kinguser/kg;->m(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0
.end method

.method private m(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 97
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 98
    :cond_0
    const/4 v0, 0x0

    .line 116
    :goto_0
    return v0

    .line 101
    :cond_1
    new-instance v0, Lcom/kingroot/kinguser/kf;

    invoke-direct {v0, p1, p2}, Lcom/kingroot/kinguser/kf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    new-instance v1, Lcom/kingroot/kinguser/ki;

    iget-object v2, p0, Lcom/kingroot/kinguser/kg;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/kingroot/kinguser/ki;-><init>(Landroid/content/Context;Lcom/kingroot/kinguser/ir;)V

    iput-object v1, p0, Lcom/kingroot/kinguser/kg;->tL:Lcom/kingroot/kinguser/ki;

    .line 103
    iget-object v0, p0, Lcom/kingroot/kinguser/kg;->tL:Lcom/kingroot/kinguser/ki;

    iget-object v1, p0, Lcom/kingroot/kinguser/kg;->tJ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ki;->r(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/kingroot/kinguser/kg;->tL:Lcom/kingroot/kinguser/ki;

    new-instance v1, Lcom/kingroot/kinguser/kh;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/kh;-><init>(Lcom/kingroot/kinguser/kg;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ki;->a(Lcom/kingroot/kinguser/is;)V

    .line 115
    iget-object v0, p0, Lcom/kingroot/kinguser/kg;->tL:Lcom/kingroot/kinguser/ki;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ki;->cV()V

    .line 116
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 49
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 77
    :goto_0
    return-void

    .line 51
    :pswitch_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/kg;->cU()V

    goto :goto_0

    .line 55
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/kingroot/kinguser/kf;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/kingroot/kinguser/kg;->tM:Lcom/kingroot/kinguser/kg$a;

    if-eqz v0, :cond_0

    .line 57
    iget-object v1, p0, Lcom/kingroot/kinguser/kg;->tM:Lcom/kingroot/kinguser/kg$a;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/kingroot/kinguser/kf;

    invoke-interface {v1, v0}, Lcom/kingroot/kinguser/kg$a;->a(Lcom/kingroot/kinguser/kf;)V

    .line 60
    :cond_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/kg;->cU()V

    goto :goto_0

    .line 65
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/kingroot/kinguser/kf;

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/kingroot/kinguser/kg;->tM:Lcom/kingroot/kinguser/kg$a;

    if-eqz v0, :cond_1

    .line 67
    iget-object v1, p0, Lcom/kingroot/kinguser/kg;->tM:Lcom/kingroot/kinguser/kg$a;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/kingroot/kinguser/kf;

    invoke-interface {v1, v0}, Lcom/kingroot/kinguser/kg$a;->b(Lcom/kingroot/kinguser/kf;)V

    .line 70
    :cond_1
    invoke-direct {p0}, Lcom/kingroot/kinguser/kg;->cU()V

    goto :goto_0

    .line 49
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public n(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/kg$b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 37
    iget-object v0, p0, Lcom/kingroot/kinguser/kg;->tK:Ljava/util/concurrent/LinkedBlockingQueue;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/kg;->tK:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 40
    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 41
    iget-object v1, p0, Lcom/kingroot/kinguser/kg;->tK:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 40
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 44
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/kg;->sendEmptyMessage(I)Z

    .line 45
    return-void
.end method
