.class public Lcom/kingroot/kinguser/bzp;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/bzp$b;,
        Lcom/kingroot/kinguser/bzp$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private bVM:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/kingroot/kinguser/bzp$b;",
            ">;"
        }
    .end annotation
.end field

.field private bVN:Lcom/kingroot/kinguser/cab;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cab",
            "<",
            "Lcom/kingroot/kinguser/bzo;",
            ">;"
        }
    .end annotation
.end field

.field private bVO:Lcom/kingroot/kinguser/bzp$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/kingroot/kinguser/bzp$a;)V
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 28
    iput-object p1, p0, Lcom/kingroot/kinguser/bzp;->a:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/kingroot/kinguser/bzp;->b:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lcom/kingroot/kinguser/bzp;->bVO:Lcom/kingroot/kinguser/bzp$a;

    .line 31
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bzp;Lcom/kingroot/kinguser/cab;)Lcom/kingroot/kinguser/cab;
    .locals 0

    .prologue
    .line 13
    iput-object p1, p0, Lcom/kingroot/kinguser/bzp;->bVN:Lcom/kingroot/kinguser/cab;

    return-object p1
.end method

.method private a()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/kingroot/kinguser/bzp;->bVM:Ljava/util/concurrent/LinkedBlockingQueue;

    if-nez v0, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bzp;->bVN:Lcom/kingroot/kinguser/cab;

    if-nez v0, :cond_0

    .line 92
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/bzp;->bVM:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bzp$b;

    if-eqz v0, :cond_0

    .line 93
    invoke-interface {v0}, Lcom/kingroot/kinguser/bzp$b;->getLocalName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lcom/kingroot/kinguser/bzp$b;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/kingroot/kinguser/bzp;->aU(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0
.end method

.method private aU(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 100
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 101
    :cond_0
    const/4 v0, 0x0

    .line 119
    :goto_0
    return v0

    .line 104
    :cond_1
    new-instance v0, Lcom/kingroot/kinguser/bzo;

    invoke-direct {v0, p1, p2}, Lcom/kingroot/kinguser/bzo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    new-instance v1, Lcom/kingroot/kinguser/cab;

    iget-object v2, p0, Lcom/kingroot/kinguser/bzp;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/kingroot/kinguser/cab;-><init>(Landroid/content/Context;Lcom/kingroot/kinguser/caf;)V

    iput-object v1, p0, Lcom/kingroot/kinguser/bzp;->bVN:Lcom/kingroot/kinguser/cab;

    .line 106
    iget-object v0, p0, Lcom/kingroot/kinguser/bzp;->bVN:Lcom/kingroot/kinguser/cab;

    iget-object v1, p0, Lcom/kingroot/kinguser/bzp;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/cab;->a(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/kingroot/kinguser/bzp;->bVN:Lcom/kingroot/kinguser/cab;

    new-instance v1, Lcom/kingroot/kinguser/bzq;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/bzq;-><init>(Lcom/kingroot/kinguser/bzp;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/cab;->a(Lcom/kingroot/kinguser/cah;)V

    .line 118
    iget-object v0, p0, Lcom/kingroot/kinguser/bzp;->bVN:Lcom/kingroot/kinguser/cab;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cab;->a()V

    .line 119
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/bzp$b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 40
    iget-object v0, p0, Lcom/kingroot/kinguser/bzp;->bVM:Ljava/util/concurrent/LinkedBlockingQueue;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bzp;->bVM:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 43
    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 44
    iget-object v1, p0, Lcom/kingroot/kinguser/bzp;->bVM:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 43
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 47
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bzp;->sendEmptyMessage(I)Z

    .line 48
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 52
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 80
    :goto_0
    return-void

    .line 54
    :pswitch_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/bzp;->a()V

    goto :goto_0

    .line 58
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/kingroot/kinguser/bzo;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/kingroot/kinguser/bzp;->bVO:Lcom/kingroot/kinguser/bzp$a;

    if-eqz v0, :cond_0

    .line 60
    iget-object v1, p0, Lcom/kingroot/kinguser/bzp;->bVO:Lcom/kingroot/kinguser/bzp$a;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/kingroot/kinguser/bzo;

    invoke-interface {v1, v0}, Lcom/kingroot/kinguser/bzp$a;->a(Lcom/kingroot/kinguser/bzo;)V

    .line 63
    :cond_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/bzp;->a()V

    goto :goto_0

    .line 68
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/kingroot/kinguser/bzo;

    if-eqz v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/kingroot/kinguser/bzp;->bVO:Lcom/kingroot/kinguser/bzp$a;

    if-eqz v0, :cond_1

    .line 70
    iget-object v1, p0, Lcom/kingroot/kinguser/bzp;->bVO:Lcom/kingroot/kinguser/bzp$a;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/kingroot/kinguser/bzo;

    invoke-interface {v1, v0}, Lcom/kingroot/kinguser/bzp$a;->b(Lcom/kingroot/kinguser/bzo;)V

    .line 73
    :cond_1
    invoke-direct {p0}, Lcom/kingroot/kinguser/bzp;->a()V

    goto :goto_0

    .line 52
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
